//
// File:        tExcept.C
// Project:	Test
// Desc:        
//
//  Exception Testing
//
// Notes:
//  
// Author(s):      Paul Houghton 719-527-7834 - (paul.houghton@wcom.com)
// Created:     02/17/01 09:19
//
// Revision History: (See end of file for Revision Log)
//
//  Last Mod By:    $Author$
//  Last Mod:	    $Date$
//  Version:	    $Revision$
//
//


using namespace std;

#include <fstream>
#include <string>
#include <stdexcept>
void
doit( void )
{

  string msg;
  
  // try
    {
    ifstream in( "JunkyStuff" );
    cout << "Open file" << endl;
    if( ! in.good() ) {
      cout << "open FAILED" << endl;
      throw ios_base::failure( "not good" );
    }
    char buf[ 4096 ];
    cout << "READING BAD FILE." << endl;
    if( ! in.read( buf, sizeof( buf ) ).good() ) {
      throw ios_base::failure( "read" );
    }
  }
#if defined( FIXME )
  catch( exception & ex ) {
    msg = msg + "caught '" + ex.what() + "' - ";
  }
#endif
  if( uncaught_exception() ) {
    cout << "Uncaught except." << endl;
  }
}

int
main( int argc, char * argv[] )
{
  cout << "Start." << endl;
  try {
    doit();
  }
  
  catch( exception & ex ) {
    cout << "Exception caught: '" << ex.what() << "'." << endl;
  }

  if( uncaught_exception() ) {
    cout << "Uncaught except." << endl;
  }
  return( 0 );
}
  

// Revision Log:
//
// $Log$
// Revision 1.1  2001/08/07 01:23:16  houghton
// *** empty log message ***
//
//

// Set XEmacs mode
//
// Local Variables:
// mode: c++
// End:
//
