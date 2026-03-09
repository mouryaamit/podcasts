const fs = require("fs");
const path = require("path");

const project = process.argv[2];

if (!project) {
  console.error("❌ Provide project dist name");
  process.exit(1);
}

const distPath = path.join("dist", project, "index.html");

const nonce = '<!--#echo var="UNIQUE_ID" -->';

let html = fs.readFileSync(distPath, "utf8");

html = html.replace(
  /<script(?![^>]*nonce)/g,
  `<script nonce="${nonce}"`
);

html = html.replace(
  /<style(?![^>]*nonce)/g,
  `<style nonce="${nonce}"`
);

html = html.replace(
  /<link(?![^>]*nonce)/g,
  `<link nonce="${nonce}"`
);

html = html.replace(
  "</head>",
  `<meta property="csp-nonce" content="${nonce}">
</head>`
);

fs.writeFileSync(distPath, html);

console.log(`Nonce injected into ${distPath}`);