#include <iostream>

int
main( int argc, char * argv[] )
{
  std::cout << "  char: " << sizeof( char ) << "\n"
	    << "  long: " << sizeof( long ) << "\n"
	    << "   int: " << sizeof( int ) << "\n"
	    << "  shrt: " << sizeof( short ) << "\n"
	    << " str 4: " << sizeof( "1234" ) << "\n"
	    << " str 2: " << sizeof( "12" ) << "\n"
	    << " str 8: " << sizeof( "12345678" ) << "\n"
	    << std::endl;
  return( 0 );
}
