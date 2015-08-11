(function (console) { "use strict";
var src_Main = function() { };
src_Main.main = function() {
	js.JQuery("document").ready(src_Main.init);
};
src_Main.init = function(event) {
	src_selectTheme_View.init();
};
var src_selectTheme_View = function() { };
src_selectTheme_View.init = function() {
	src_selectTheme_View.words = ["A","B","C","D","E","F","G","H"];
	src_selectTheme_View.firstTarget = js.JQuery(".firstTxt");
	src_selectTheme_View.secondTarget = js.JQuery(".secondTxt");
	src_selectTheme_View.btn = js.JQuery("#btn");
	src_selectTheme_View.current = 0;
	src_selectTheme_View.clickBtn();
};
src_selectTheme_View.randomNumber = function() {
	var length = src_selectTheme_View.words.length;
	return src_selectTheme_View.num = Math.floor(Math.random() * length);
};
src_selectTheme_View.clickBtn = function() {
	src_selectTheme_View.btn.click(function() {
		src_selectTheme_View.setText(src_selectTheme_View.currentClick(),src_selectTheme_View.words,src_selectTheme_View.randomNumber());
	});
};
src_selectTheme_View.setText = function(target,words,num) {
	target.text(words[num]);
};
src_selectTheme_View.currentClick = function() {
	if(src_selectTheme_View.current == 0) {
		src_selectTheme_View.element = src_selectTheme_View.firstTarget;
		src_selectTheme_View.current++;
	} else if(src_selectTheme_View.current == 1) {
		src_selectTheme_View.element = src_selectTheme_View.secondTarget;
		src_selectTheme_View.current++;
	} else if(src_selectTheme_View.current > 1) {
		src_selectTheme_View.element = "";
		src_selectTheme_View.clearTarget();
		src_selectTheme_View.current = 0;
	}
	return src_selectTheme_View.element;
};
src_selectTheme_View.clearTarget = function() {
	src_selectTheme_View.firstTarget.text("");
	src_selectTheme_View.secondTarget.text("");
};
var q = window.jQuery;
var js = js || {}
js.JQuery = q;
src_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
