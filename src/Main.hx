package src;

import js.Browser;
import js.JQuery;
import src.selectTheme.View;
 
class Main {

 	public static function main():Void {
 		new JQuery('document').ready(init);
 	}

  private static function init(event:JqEvent):Void {
  	View.init();
  }

}
