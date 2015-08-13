package src.selectTheme;

import js.Browser;
import js.JQuery;
 
class View {

  static var num:Int;
  static var words:Array<String>;
  static var firstTarget:Dynamic;
  static var secondTarget:Dynamic;
  static var btn:Dynamic;
  static var current:Int;
  static var element:Dynamic;
	
	public static function init():Void {
		words        = [];
    firstTarget  = new JQuery('.firstTxt');
    secondTarget = new JQuery('.secondTxt');
    btn          = new JQuery('#btn');
    current      = 0;

    clickBtn();
  }

  static function randomNumber() {
  	var length:Int = words.length;
    return num = Math.floor( Math.random() * length );
  } 

  static function clickBtn():Void { 
    btn.click(function() {
      getTextArea();
      setText(currentClick(),words,randomNumber());
    });
  }

  static function setText(target,words,num):Void {
    target.text(words[num]);
  }

  static function currentClick():Dynamic {
    if ( current == 0 ) {
      btn.text("select");
      element = firstTarget;
      current++;
    } else if ( current == 1 ) {
      element = secondTarget;
      current++;
    } else if ( current > 1 ) {
      element = '';
      clearTarget();
      current = 0;
    }
    return element;
  }

  static function clearTarget() {
    firstTarget.text("");
    secondTarget.text("");
    btn.text("clear");
  }

  static function getTextArea():Void {
    btn.click(function() {
      var text:String = new JQuery('#textArea').val();
      words = text.split(',');
      trace(words);
    });
  }

}