package src;

import js.Browser;
import js.JQuery;
 
class Main {
	
	public static function main():Void {
		var newText:String = 'Helllo-Haxe';
		var element = Browser.document.getElementsByTagName('p');
		trace(untyped element);

    new JQuery( 'p' ).text( newText );
    new JQuery( 'p' ).click( function() { 
      JQuery.cur.text( 'change' );
    });

		
  }

}