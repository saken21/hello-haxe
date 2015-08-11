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
		words        = ['A','B','C','D','E','F','G','H'];
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
      setText(currentClick(),words,randomNumber());
    });
  }

  static function setText(target,words,num):Void {
    target.text(words[num]);
  }

  static function currentClick():Dynamic {
    if ( current == 0 ) {
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
  }

}