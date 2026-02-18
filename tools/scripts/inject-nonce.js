// tools/scripts/inject-nonce.js
const fs = require("fs");
const path = require("path");
const yourProjectName = process.argv[2];
if (!yourProjectName) {
  console.error(
    "❌ Error: No project name provided.\nUsage: node inject-nonce.js '/customerapp/'"
  );
  process.exit(1);
}
const distPath = path.join("dist/apps", yourProjectName, "index.html"); // Adjust this path!
console.log("distPath", distPath)
// const nonceValue = "random-csp-nonce"; // Use dynamic nonce if you generate it per request
const nonceValue = '<!--#echo var="UNIQUE_ID" -->';

let html = fs.readFileSync(distPath, "utf-8");

/**
 * ✅ Inject nonce ONLY into inline <script> tags
 * - No src attribute
 * - No existing nonce
 */
html = html.replace(
  /<script(?![^>]*\bsrc=)(?![^>]*\bnonce=)([^>]*)>/gi,
  `<script nonce="${nonceValue}"$1>`
);

// Inject nonce into <script> and <link> tags (external only)
// html = html.replace(
//   /<script(?![^>]*nonce=)([^>]*)>/g,
//   `<script nonce="${nonceValue}"$1>`
// );
// html = html.replace(/<script>/g, `<script nonce="${nonceValue}">`);

html = html.replace(
  /<link(?![^>]*nonce=)([^>]*)>/g,
  `<link nonce="${nonceValue}"$1>`
);

/**
 * ✅ Inject nonce into <style> tags
 */
html = html.replace(
  /<style(?![^>]*\bnonce=)([^>]*)>/gi,
  `<style nonce="${nonceValue}"$1>`
);

// html = html.replace(
//   /<style(?![^>]*nonce=)([^>]*)>/g,
//   `<style nonce="${nonceValue}"$1>`
// );
html = html.replace(/<style>/g, `<style nonce="${nonceValue}">`);

html = html.replace(/random-csp-nonce/g, `${nonceValue}`);

// Inject date time for build
const dateTime = new Date().toLocaleString();
html = html.replace(
  /<meta name="build-date" content=".*?">/,
  `<meta name="build-date" content="${dateTime}">`
);
// html = html.replace(
//   /"/g,
//   `'`
// );
// html = html.replace(
//   /&quot;/g,
//   `"`
// );

// html = html.replace(/<!--#echo var='UNIQUE_ID' -->/g, '<!--#echo var="UNIQUE_ID" -->');
// html = html.replace(/window.__cspNonce = '<!--#echo var='CSP_NONCE' -->'/g, `window.__cspNonce = "<!--#echo var=\\"CSP_NONCE\\" -->"`);
fs.writeFileSync(distPath, html, "utf-8");

console.log(`✅ Injected nonce="${nonceValue}" into ${distPath}`);
