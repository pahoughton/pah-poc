
/**
 * ArrayArgs.java
 *
 *
 * Created: Wed Apr 11 11:02:11 2001
 *
 * @author Paul Houghton
 * @version
 */

class TestArgs {

  private static String replace( String src, String from, String to ) {
    int start = 0;
    int pos;
    StringBuffer dest = new StringBuffer();
    while( (pos = src.indexOf( from, start )) != -1 ) {
      dest.append( src.substring( start, pos ) );
      dest.append( to );
      start = pos + from.length();
    }

    if( start < src.length() ) {
      dest.append( src.substring( start ) );
    }
    return( dest.toString() );
  }
		   
    
  public static String replaceVars( String[] vars ) {
    String tmp = TableRowCountSelectSql;
    
    for( int v = 0; v + 1 < vars.length; v += 2) {
      tmp = replace( tmp, vars[v], vars[v+1] );
    }
    return( tmp );
  }

  private static final String TableRowCountSelectSql =
    "@TABLE_NAME@\nselect\n" +
    "  num_rows\n" +
    "from\n" +
    "  TABS\n" +
    "where\n" +
    "  table_name = '@TABLE_NAME@'\n" +
    "  twice = @TABLE_NAME@";
}


public class ArrayArgs {
  public ArrayArgs () {
    
  }
  
  public static void main(String[] args) {
    String value = "Customer";
    String vars[] = {"@TABLE_NAME@", value };
    String sql = TestArgs.replaceVars( new String[] {"@TABLE_NAME@", value } );
    // String sql = TestArgs.replaceVars( vars );
    System.out.println( sql );
  }
  
} // ArrayArgs
