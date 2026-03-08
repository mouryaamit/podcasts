const fs = require("fs");
const path = require("path");
const moment = require("moment");
const { execSync } = require("child_process");

const distPath = path.resolve(
  __dirname,
  "../../dist/resources_ui/index.html"
);

const buildObj = {
  e: process.argv[2] || "DEV",
  t: moment().format("DD-MMM-YYYY HH:mm:ss"),
  b: execSync("git rev-parse --abbrev-ref HEAD").toString().trim(),
  c: execSync("git rev-parse --short HEAD").toString().trim()
};

const encoded = Buffer.from(JSON.stringify(buildObj)).toString("base64");

let html = fs.readFileSync(distPath, "utf8");

const metaTag = `
<meta name="x-sys" content="${encoded}">
`;

html = html.replace("</head>", `${metaTag}\n</head>`);

fs.writeFileSync(distPath, html);

console.log("🔐 Encoded metadata injected.");