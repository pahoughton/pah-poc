import java.io.*;

public class jRsh {

  static void main( String args[] ) throws Exception {
    Process proc = Runtime.getRuntime().exec( new String[] { "rsh", "cworld", "ls" } );
    InputStream pout = proc.getInputStream();
    InputStreamReader preader = new InputStreamReader( pout );
    
    char [] buffer = new char[ 512 ];
    while( preader.read( buffer, 0, buffer.length ) >= 0 ) {
      System.out.print( buffer );
    }
  }
}
