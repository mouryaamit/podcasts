var replace = require('replace-in-file');
var fs = require('fs');
var path = require('path');
const moment = require('moment-timezone');
var timeStamp = moment(new Date()).tz('Asia/Calcutta').format("MM/DD/YYYY hh:mm:ss A z");

var walk = function(dir, done) {
  var results = [];
  fs.readdir(dir, function(err, list) {
    if (err) return done(err);
    var pending = list.length;
    if (!pending) return done(null, results);
    list.forEach(function(file) {
      file = path.resolve(dir, file);
      fs.stat(file, function(err, stat) {
        if (stat && stat.isDirectory()) {
          walk(file, function(err, res) {
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

walk('src/environments', function(err, results) {
    if (err) throw err;
    console.log(results)
    for(let i = 0 ; i < results.length ; i++)
    updateTimestamp(results[i]);
});

function updateTimestamp(file){
    // const options = {
    //     files: files,
    //     from: /timeStamp: '(.*)'/g,
    //     to: "timeStamp: '" + timeStamp + "'",
    //     allowEmptyPaths: false,
    // };
    // try {
    //     let changedFiles = replace.sync(options);
    //     if (changedFiles == 0) {
    //         throw "Please make sure that the file '" + options.files + "' has \"timeStamp: ''\"";
    //     }
    //     console.log('Build timestamp is set to: ' + timeStamp);
    // } catch (error) {
    //     console.error('Error occurred:', error);
    //     throw error
    // }
    fs.readFile(file, 'utf8', function (err,data) {
      if (err) {
        return console.log(err);
      }
      var result = data.replace(/timeStamp: '(.*)'/g, "timeStamp: '" + timeStamp + "'");

      fs.writeFile(file, result, 'utf8', function (err) {
         if (err) return console.log(err);
      });
    });
}
