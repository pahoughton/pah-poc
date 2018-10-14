import java.sql.*;

class jOracle
{
  public static void main( String args[] ) throws SQLException {
    // Load the Oracle JDBC driver
    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());

    // Connect to the database
    // You can put a database name after the @ sign in the connection URL.
    Connection conn =
      DriverManager.getConnection (
	"jdbc:oracle:thin:@sideswipe:1525:dmap",
	"map_admin",
	"map_admin" );
    
	// "jdbc:oracle:thin:@sideswipe.wcom.com:1523:dcis", "daclark", "daclark" );


    java.sql.DatabaseMetaData meta = conn.getMetaData();

    ResultSet rset
      = meta.getImportedKeys( null, "MAP", "TDIR_GRP_APL" );


    ResultSetMetaData resMeta = rset.getMetaData();

    int colCount = resMeta.getColumnCount();
    
    while( rset.next() ) {
      System.out.println( "\nRecord: \n" );
      
      for( int c = 1; c <= colCount; ++ c ) {
	System.out.println( resMeta.getColumnName( c ) + "\t'"
			    + rset.getString( c ) + "'" );
      }
    }
    
    
  }
}   
