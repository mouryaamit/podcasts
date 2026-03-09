const sharp = require("sharp");
const fs = require("fs");
const path = require("path");

const targetDir = process.argv[2];

if (!targetDir) {
  console.error("Provide dist directory");
  process.exit(1);
}

function processDir(dir) {

  fs.readdirSync(dir).forEach(file => {

    const filePath = path.join(dir, file);

    const stat = fs.statSync(filePath);

    if (stat.isDirectory()) {
      processDir(filePath);
      return;
    }

    if (!file.match(/\.(jpg|jpeg|png)$/i)) return;

    sharp(filePath)
      .toBuffer()
      .then(data => {

        fs.writeFileSync(filePath, data);

        console.log("EXIF removed:", filePath);

      })
      .catch(() => {});
  });
}

processDir(targetDir);