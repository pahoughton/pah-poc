#define CLUE_DEBUG 1

#include <Log.hh>  // inclues LogBuf.hh & LogLevel.hh for you

int
main( int argc, char * argv[] )
{
  
  Log log( "App.log", LogLevel::All );
  
  LogIf( log, LogLevel::Info ) << "This is an info entry." << endl;

  log.tee( cerr );

  LogIf( log, LogLevel::Error )
    << "This is an error entry" << endl;
  
  log << "This is more of the same error entry" << endl;
  
  return( 0 );
	    
}
