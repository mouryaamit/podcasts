const { execSync, spawnSync } = require("child_process");
const path = require("path");
const moment = require("moment");

// ---------- CONFIG ----------
const ENV = process.argv[2] || "DEV";
const APP_PATH = path.resolve(__dirname, "../../apps/podcast");
const OUTPUT_PATH = "../../dist/resources_ui";
// ----------------------------

// Generate build info
const BUILD_TIMESTAMP = moment().format("YYYY-MM-DD_HH-mm-ss");
const BUILD_BRANCH = execSync("git rev-parse --abbrev-ref HEAD")
  .toString()
  .trim();
const BUILD_COMMIT = execSync("git rev-parse --short HEAD")
  .toString()
  .trim();

console.log("🚀 Building Flutter Web");
console.log("Env:", ENV);
console.log("Timestamp:", BUILD_TIMESTAMP);
console.log("Branch:", BUILD_BRANCH);
console.log("Commit:", BUILD_COMMIT);

// Build flutter args
const flutterArgs = [
  "build",
  "web",
  "--base-href",
  "/resources/",
  "--output",
  OUTPUT_PATH,
  "--dart-define=BUILD_TIMESTAMP=" + BUILD_TIMESTAMP,
  "--dart-define=BUILD_BRANCH=" + BUILD_BRANCH,
  "--dart-define=BUILD_COMMIT=" + BUILD_COMMIT,
  "--dart-define=BUILD_ENV=" + ENV,
];

if (ENV === "PROD") {
  flutterArgs.push("--release");
}

// Run flutter build
const result = spawnSync("flutter", flutterArgs, {
  cwd: APP_PATH,
  stdio: "inherit",
  shell: true,
});

if (result.status !== 0) {
  console.error("❌ Flutter build failed.");
  process.exit(1);
}

// After build, inject metadata
require("./inject-build-meta-flutter.js");

console.log("✅ Build completed successfully.");