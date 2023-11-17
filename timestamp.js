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
    updateTimestamp(results);
});

function updateTimestamp(files){
    const options = {
        files: files,
        from: /timeStamp: '(.*)'/g,
        to: "timeStamp: '" + timeStamp + "'",
        allowEmptyPaths: false,
    };
    try {
        let changedFiles = replace.sync(options);
        if (changedFiles == 0) {
            throw "Please make sure that the file '" + options.files + "' has \"timeStamp: ''\"";
        }
        console.log('Build timestamp is set to: ' + timeStamp);
    } catch (error) {
        console.error('Error occurred:', error);
        throw error
    }
}