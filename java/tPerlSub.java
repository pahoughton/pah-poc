
public class tPerlSub {

  public static void main( String[] args ) throws Exception {

 org.apache.oro.text.regex.Perl5Compiler
   p5cmp = new org.apache.oro.text.regex.Perl5Compiler();

 org.apache.oro.text.regex.Pattern
   pat = p5cmp.compile( "^[<\\(]*(\\w[\\w.@]+)[\\)>]*" );

 org.apache.oro.text.regex.Perl5Substitution
   sub = new org.apache.oro.text.regex.Perl5Substitution( "$1" );
 
 org.apache.oro.text.regex.Perl5Matcher
   matcher = new org.apache.oro.text.regex.Perl5Matcher();

 String src;
 String result;

 src = "paul.houghton@wcom.com";
 
 result = org.apache.oro.text.regex.Util.substitute( matcher,
						     pat,
						     sub,
						     src,
						     1 );
 System.out.println( src + " - " + result );
 
 src = "<paul.houghton@wcom.com>";
 
 result = org.apache.oro.text.regex.Util.substitute( matcher,
						     pat,
						     sub,
						     src,
						     1 );
						     
 System.out.println( src + " - " + result );
 
 src = "(paul.houghton@wcom.com)";
 
 result = org.apache.oro.text.regex.Util.substitute( matcher,
						     pat,
						     sub,
						     src,
						     1 );
						     
 System.out.println( src + " - " + result );
 
  }

}    
