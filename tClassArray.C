#include <fstream.h>

ofstream files[] =
{
  ofstream( "this" ),
  ofstream( "that" ),
  ofstream( "other" )
};

int
main( int argc, char * argv[] )
{
  cout << sizeof( files ) / sizeof( files[0] ) << endl;
}
