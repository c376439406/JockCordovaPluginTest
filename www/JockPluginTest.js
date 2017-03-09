var exec = require('cordova/exec');

var JockPluginTest = function() {};

exports.coolMethod = function(arg0, success, error) {
    exec(success, error, "JockPluginTest", "coolMethod", [arg0]);
};

JockPluginTest.showNativeAlert = function() {
    exec(null, null, "JockPluginTest", "showNativeAlert", []);
}

module.exports = JockPluginTest;