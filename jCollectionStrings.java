/****
 
  File: 	jCollectionStrings.java
  Project:	Test (%PP%)
  Item:		%PI% (%PF%)
  Desc:        

    Source for Java class jCollectionStrings.

  Notes:
    
  Author(s):   Paul Houghton <paul.houghton@wcom.com>
  Created:     07/23/01 13:45
  
  Revision History: (See end of file for Revision Log)
  
    Last Mod By:    %PO%
    Last Mod:	    %PRT%
    Version:	    %PIV%
    Status:	    %PS%
  
****/


import java.util.Vector;
import java.util.HashMap;

/**
 
   @author Paul Houghton <paul.houghton@wcom.com>
   @version 1.01.01
 */

public class jCollectionStrings {

  public static void main( String args[] ) {

    Vector list = new Vector();
    list.add( "one" );
    list.add( "two" );
    list.add( "three" );

    HashMap map = new HashMap();

    map.put( "one", "1" );
    map.put( "two", "2" );
    map.put( "three", "3" );

    System.out.println( "List: '" + list + "'\n" );
    System.out.println( "Map: '" + map + "'\n" );
  }

} // jCollectionStrings

/****
   Revision Log:

   %PL%

****/

