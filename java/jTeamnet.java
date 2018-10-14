
import javax.naming.InitialContext;
import javax.naming.directory.DirContext;
import javax.naming.Context;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import java.util.HashMap;
import java.util.Hashtable;
import javax.naming.NamingEnumeration;

/**
 * jTeamnet.java
 *
 *
 * Created: Mon Jul 23 05:31:46 2001
 *
 * @author Paul Houghton
 * @version
 */

public class jTeamnet {
  
  public static void main(String[] args) throws Exception {
    new jTeamnet();
  }

  private static final String BASE_DN = "o=WorldCom, c=US";

  public jTeamnet() throws Exception {
    InitialContext context =  new InitialContext();

    Hashtable env = new Hashtable();

    env.put( Context.INITIAL_CONTEXT_FACTORY, 
	     "com.sun.jndi.ldap.LdapCtxFactory" );

    env.put( Context.PROVIDER_URL,
	     "ldap://teamnet.wcom.com:389" );
    
    env.put( Context.PROVIDER_URL,
	     "ldap://www.wcomnet.com:389" );

    env.put( Context.PROVIDER_URL,
	     "ldap://teamnet-dev.wcomnet.com:389" );
    
    System.out.println( "getting context" + env );
    DirContext ctx = new InitialDirContext(env);
    System.out.println( "got context" );
    
    SearchControls control = new SearchControls();
    control.setSearchScope(SearchControls.SUBTREE_SCOPE);
    control.setReturningAttributes( new String[] { "*" } );

    System.out.println( "performing search" );
    NamingEnumeration enum = ctx.search( BASE_DN, "uid=pahoughton", control);
    System.out.println( "search done" );

    SearchResult result = null;

    while( enum.hasMore() ) {
      result = (SearchResult)enum.next();
      System.out.println( result );
      System.out.println( result.getName() );
    }

    ctx.addToEnvironment( Context.SECURITY_PRINCIPAL,
			  result.getName() + ", " + BASE_DN );
    
    ctx.addToEnvironment( Context.SECURITY_CREDENTIALS,
			  "password" );

    enum = ctx.search( BASE_DN, "uid=pahoughton", control);

    while( enum.hasMore() ) {
      result = (SearchResult)enum.next();
      System.out.println( result );
      System.out.println( result.getName() );
    }
    
    
    enum.close();
  }
    /*
    // env.put(Context.SECURITY_AUTHENTICATION, "simple");

    env.put(Context.SECURITY_PRINCIPAL,
	    
            env.put(Context.SECURITY_CREDENTIALS, "mysecret");

            // Create the initial context
            DirContext ctx = new InitialDirContext(env);

            // ... do something useful with ctx
    */
} // jTeamnet
