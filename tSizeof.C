#include <iostream>

int
main( int argc, char * argv[] )
{
  std::cout << "  char: " << sizeof( char ) << "\n"
	    << "  long: " << sizeof( long ) << "\n"
	    << "   int: " << sizeof( int ) << "\n"
	    << "  shrt: " << sizeof( short ) << "\n"
	    << std::endl;
  return( 0 );
}
