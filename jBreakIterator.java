

public class jBreakIterator {

  public static void main( String args[] ) {

    String text = "This is    a  test\n\nNext para\n  Indented para.";

      int lineBegPos = 0;
      int lineEndPos = 0;
      for( lineEndPos = text.indexOf( "\n", lineBegPos );
	   lineBegPos < text.length();
	   lineBegPos = lineEndPos + 1,
	     lineEndPos = text.indexOf( "\n", lineBegPos ) ) {
	
	if( lineEndPos == -1 )
	  lineEndPos = text.length();

	System.out.println( "beg: " + lineBegPos + "\n"
			    + "end: " + lineEndPos + "\n" );

	String boundaryText = text.substring( lineBegPos, lineEndPos );
	java.text.BreakIterator boundary
	  = java.text.BreakIterator.getLineInstance();
	boundary.setText( boundaryText );

	int start = boundary.first();
	for( int end = boundary.next();
	     end != java.text.BreakIterator.DONE;
	     start = end, end = boundary.next()) {
	  System.out.println( "Start: " + start + "\n"
			      + "  End: " + end + "\n"
			      + " Text: '"
			      + ( start >= 0 && end >= 0 ?
				boundaryText.substring( start, end ) : "" )
			      + "'\n" );
	}
      }
  }
}

