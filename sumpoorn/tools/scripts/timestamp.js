const fs = require("fs");
const path = require("path");
const moment = require("moment-timezone");
const { execSync } = require("child_process");
// const project = process.env.npm_lifecycle_event?.split(":")[1];
// const env = process.env.npm_lifecycle_event?.split(":")[2] ?? "dev";
const project = process.argv[2]?.split(":")[0] ?? process.env.npm_lifecycle_event?.split(":")[1] ?? null;
const env = process.argv[2]?.split(":")[2] ?? process.env.npm_lifecycle_event?.split(":")[2] ?? null;
console.log("Running timestamp for project:", project, "& environment:", env);

if (!project && !env) {
  process.exit(0);
}

// Get formatted timestamp
const timeStamp = moment(new Date())
  .tz("Asia/Calcutta")
  .format("DD MMM YYYY hh:mm:ss A z");

// Get current Git commit hash (short)
const commitId = execSync("git rev-parse --short HEAD").toString().trim();

// Try to get branch from CI env vars
let branch =
  execSync("git rev-parse --abbrev-ref HEAD").toString().trim() ||
  process.env.GIT_BRANCH || // Jenkins
  process.env.BRANCH_NAME || // Jenkins (Multibranch Pipeline)
  process.env.CI_COMMIT_REF_NAME || // GitLab
  process.env.GITHUB_REF_NAME || // GitHub Actions (Node 20+)
  (process.env.GITHUB_REF || "").replace("refs/heads/", "") || // GitHub Actions fallback
  process.env.BITBUCKET_BRANCH || // Bitbucket Pipelines
  process.env.CIRCLE_BRANCH || // CircleCI
  null;

if (!branch) {
  branch = execSync("git rev-parse --abbrev-ref HEAD").toString().trim();
  if (branch === "HEAD") {
    try {
      branch = execSync("git name-rev --name-only HEAD").toString().trim();
    } catch {
      branch = "unknown";
    }
  }
}

const branchName = `${branch} (${commitId})`;

console.log("timeStamp:", timeStamp, "& branchName:", branchName);

const walk = function (dir, done) {
  let results = [];
  fs.readdir(dir, function (err, list) {
    if (err) return done(err);
    let pending = list.length;
    if (!pending) return done(null, results);
    list.forEach(function (file) {
      file = path.resolve(dir, file);
      fs.stat(file, function (err, stat) {
        if (stat && stat.isDirectory()) {
          walk(file, function (err, res) {
            results = results.concat(res);
            if (!--pending) done(null, results);
          });
        } else {
          results.push(file);
          if (!--pending) done(null, results);
        }
      });
    });
  });
};

walk("./apps/angular/src/environments", function (err, results) {
  if (err) throw err;
  for (let i = 0; i < results.length; i++) {
    if (results[i].split("environments").pop().includes(env) ) {
      updateTimestampAndBranch(results[i]);
    }
  }
});

function updateTimestampAndBranch(file) {
  fs.readFile(file, "utf8", function (err, data) {
    if (err) return console.error(err);

    let newData = data;

    // Replace existing values if present
    if (/timeStamp\s*:\s*['"](.*?)['"]/.test(newData)) {
      newData = newData.replace(
        /timeStamp\s*:\s*['"](.*?)['"]/,
        `timeStamp: '${timeStamp}'`
      );
    } else {
      // Insert inside environment object
      newData = newData.replace(
        /(export const environment\s*=\s*{)/,
        `$1\n  timeStamp: '${timeStamp}',`
      );
    }

    if (/branchName\s*:\s*['"](.*?)['"]/.test(newData)) {
      newData = newData.replace(
        /branchName\s*:\s*['"](.*?)['"]/,
        `branchName: '${branchName}'`
      );
    } else {
      newData = newData.replace(
        /(export const environment\s*=\s*{)/,
        `$1\n  branchName: '${branchName}',`
      );
    }

    fs.writeFile(file, newData, "utf8", function (err) {
      if (err) console.error("Error writing file:", err);
      else console.log(`✅ Updated timestamp and branch in ${file}`);
    });
  });
}
