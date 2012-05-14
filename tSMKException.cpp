#include <SMKException.h>

void crashy( void )
{
  SMKThrow( "bad stuff %d",5 );
}  
int main( int argc, const char * argv[] )
{
  try {
    crashy();
  } catch( SMKException & e ) {
    std::cerr << e << std::endl;
  } catch( std::exception & e ) {
    std::cerr << "Exception: " << e.what() << std::endl;
    exit(1);
  } catch( ... ) {
    std::cerr << "Unknown exception" << std::endl;
    exit(1);
  }
  return 0;
}



