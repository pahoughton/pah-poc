/****
 
  File:        tRandomAccessFile.java
  Project:	Test (%PP%)
  Item:	%PI% (%PF%)
  Desc:        

    Source for Java class tRandomAccessFile.

  Notes:
    
  Author(s):   Paul Houghton <paul.houghton@wcom.com>
  Created:     06/20/01 05:44
  
  Revision History: (See end of file for Revision Log)
  
    Last Mod By:    %PO%
    Last Mod:	    %PRT%
    Version:	    %PIV%
    Status:	    %PS%
  
****/


import java.io.RandomAccessFile;

/**
 
   @author Paul Houghton <paul.houghton@wcom.com>
   @version 1.01.01
 */

public class tRandomAccessFile {

  public static void main( String args[] ) throws Exception {

    RandomAccessFile file
      = new RandomAccessFile( "/tmp/tRandomAccessFile.txt", "rw" );

    String line_1 = "this is a test 1\n";
    String line_2 = "this is a test 2\n";
    String line_3 = "this is a test 3\n";

    System.out.println( line_1.length() );
    
    file.writeBytes( line_1 );
    System.out.println( file.getFilePointer() + " " + file.length() );
    file.writeBytes( line_2 );
    System.out.println( file.getFilePointer() + " " + file.length() );
    file.writeBytes( line_3 );
    file.setLength( file.getFilePointer() );
    System.out.println( file.getFilePointer() + " " + file.length() );
    file.close();
  }

} // tRandomAccessFile

/****
   Revision Log:

   %PL%

****/

