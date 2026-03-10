const { execSync } = require("child_process");

/* ---------------------------
   Parse CLI args
---------------------------- */

const args = process.argv.slice(2);

const getArg = (name, defaultValue = null) => {
  const arg = args.find((a) => a.startsWith(`--${name}=`));
  return arg ? arg.split("=")[1] : defaultValue;
};

const project = getArg("project");
const projectType = getArg("type");
const env = (getArg("env", "DEV")).toUpperCase();
const distPath = getArg("dist");
const baseHref = getArg("baseHref"); // optional

/* ---------------------------
   Build metadata
---------------------------- */

const timestamp = new Date().toISOString();
const branch = execSync("git rev-parse --abbrev-ref HEAD").toString().trim();
const commit = execSync("git rev-parse --short HEAD").toString().trim();
const build = Date.now();

console.log("🚀 Build Starting");
console.log({ project, projectType, env, distPath, baseHref });

process.env.BUILD_ENV = env;
process.env.BUILD_TIMESTAMP = timestamp;
process.env.BUILD_BRANCH = branch;
process.env.BUILD_COMMIT = commit;
process.env.BUILD_NUMBER = build;

/* ---------------------------
   Angular Build
---------------------------- */

if (projectType === "angular") {

  const configuration = env === "PROD" ? "production" : "development";
  const baseHrefArg = baseHref ? `--base-href=${baseHref}` : "";

  execSync(
    `nx run ${project}:build:${configuration} --outputPath=${distPath} ${baseHrefArg}`,
    { stdio: "inherit" }
  );

}

/* ---------------------------
   Flutter Build
---------------------------- */

if (projectType === "flutter") {

  const baseHrefArg = baseHref ? `--base-href ${baseHref}` : "";

  execSync(
    `
flutter build web \
${baseHrefArg} \
--output ../../${distPath} \
--dart-define=FLUTTER_WEB_USE_SKIA=false
`,
    {
      cwd: `apps/${project}`,
      stdio: "inherit"
    }
  );

}

/* ---------------------------
   Production security
---------------------------- */

if (env === "PROD") {
  execSync(`node tools/scripts/strip-exif.js ${distPath}`, { stdio: "inherit" });
}

/* ---------------------------
   Inject metadata
---------------------------- */

execSync(
  `node tools/scripts/inject-meta.js ${distPath}/index.html`,
  { stdio: "inherit" }
);

console.log("✅ Build Completed");