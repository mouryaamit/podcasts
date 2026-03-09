const { execSync } = require("child_process");

const project = process.argv[2];
const env = process.argv[3] || "DEV";

const timestamp = new Date().toISOString();
const branch = execSync("git rev-parse --abbrev-ref HEAD").toString().trim();
const commit = execSync("git rev-parse --short HEAD").toString().trim();
const build = Date.now();

console.log("🚀 Build Starting");
console.log({ env, timestamp, branch, commit, build });

process.env.BUILD_ENV = env;
process.env.BUILD_TIMESTAMP = timestamp;
process.env.BUILD_BRANCH = branch;
process.env.BUILD_COMMIT = commit;
process.env.BUILD_NUMBER = build;

let distPath = "";

if (project === "angular") {

  execSync(
    `nx run angular:build:${env === "PROD" ? "production" : "development"}`,
    { stdio: "inherit" }
  );

  distPath = "dist/sumpoorn_ui";

}

if (project === "podcast") {

  execSync(`
flutter build web \
--base-href /resources/ \
--output ../../dist/resources_ui \
--dart-define=FLUTTER_WEB_USE_SKIA=false
`, {
    cwd: "apps/podcast",
    stdio: "inherit"
  });

  distPath = "dist/resources_ui";

}

if (env === "PROD") {
  execSync(`node tools/scripts/strip-exif.js ${distPath}`, { stdio: "inherit" });
}

execSync(
  `node tools/scripts/inject-meta.js ${distPath}/index.html`,
  { stdio: "inherit" }
);

console.log("✅ Build Completed");