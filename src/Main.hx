package src;

import js.Browser;
<<<<<<< HEAD
import js.html.Element;
=======
import js.JQuery;
>>>>>>> 9f23140d56afa3d7b01272a2792b4fc61849aea6
 
class Main {
	
	public static function main():Void {
		var newText:String = 'Helllo-Haxe';
		var element = Browser.document.getElementsByTagName('p');
		trace(untyped element);

    new JQuery( 'p' ).text( newText );
    new JQuery( 'p' ).click( function() { 
      JQuery.cur.text( 'change' );
    });

		
<<<<<<< HEAD
		var all:Element = Browser.document.getElementById('all');
		all.innerText = 'taa';
		
    }
=======
  }
>>>>>>> 9f23140d56afa3d7b01272a2792b4fc61849aea6

}