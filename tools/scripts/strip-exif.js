const fs = require("fs");
const path = require("path");
const sharp = require("sharp");

const assetsDir = path.join(__dirname, "../../libs/assets/images");

function stripExif(dir) {
  fs.readdirSync(dir).forEach((file) => {
    const filePath = path.join(dir, file);
    const stat = fs.statSync(filePath);

    if (stat.isDirectory()) {
      stripExif(filePath);
    } else if (/\.(jpe?g|png)$/i.test(file)) {
      sharp(filePath)
        .metadata()
        .then((meta) => {
          if (meta.exif) {
            // EXIF present → rewrite without metadata
            const ext = path.extname(file).toLowerCase();
            let pipeline = sharp(filePath);

            if (ext === ".jpg" || ext === ".jpeg") {
              pipeline = pipeline.jpeg({ quality: 90 });
            } else if (ext === ".png") {
              pipeline = pipeline.png();
            }

            pipeline
              .toBuffer()
              .then((data) => {
                fs.writeFileSync(filePath, data);
                console.log(
                  `${new Date().toISOString()} - Stripped ALL EXIF from ${filePath}\n`
                );
              })
              .catch((err) => {
                console.log(
                  `${new Date().toISOString()} - ERROR stripping EXIF from ${filePath}: ${
                    err.message
                  }\n`
                );
              });
          } else {
            // console.log(
              // `${new Date().toISOString()} - No EXIF in ${filePath}, skipped.\n`
            // );
          }
        })
        .catch((err) => {
          console.log(
            `${new Date().toISOString()} - ERROR reading metadata for ${filePath}: ${
              err.message
            }\n`
          );
        });
    }
  });
}

// stripExif(assetsDir);
