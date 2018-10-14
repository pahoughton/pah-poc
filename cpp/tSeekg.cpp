#include <iostream>
#include <fstream>

using namespace std;

int
main( int argc, char * argv[] )
{
  ifstream  in( "/tmp/BigFile" );

  if( ! in.good() )
    {
      cerr << "in error." << endl;
      return( 1 );
    }

  if( ! in.seekg( 1024 ).good() )
    {
      cerr << "seek failed." << endl;
      return( 1 );

    }

  char buf[4096];

  in.read( buf, sizeof( buf ) );

  buf[4098] = 0;
  
  cout << buf << endl;
}
