(function () { "use strict";
var src = {};
src.Main = function() { };
src.Main.main = function() {
	var array = ["test","test2"];
	var func = function() {
		console.log("func");
	};
	var _g1 = 0;
	var _g = array.length;
	while(_g1 < _g) {
		var p = _g1++;
		console.log(array[p]);
	}
	window.alert("test");
	func();
};
src.Main.main();
})();
