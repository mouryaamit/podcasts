const fs = require("fs");

const file = process.argv[2];

if (!file) {
  console.error("❌ No index.html provided");
  process.exit(1);
}

const meta = {
  env: process.env.BUILD_ENV,
  timestamp: process.env.BUILD_TIMESTAMP,
  branch: process.env.BUILD_BRANCH,
  commit: process.env.BUILD_COMMIT,
  build: process.env.BUILD_NUMBER
};

const encoded = Buffer.from(JSON.stringify(meta)).toString("base64");

let html = fs.readFileSync(file, "utf8");

// remove existing x-build if present
html = html.replace(/<meta\s+name=["']x-build["'][^>]*>/i, "");

// inject fresh tag
const tag = `<meta name="x-build" content="${encoded}">`;

html = html.replace("</head>", `${tag}\n</head>`);

fs.writeFileSync(file, html);

console.log("Metadata injected into", file);