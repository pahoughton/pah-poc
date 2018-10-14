#include <iostream>
#include <set>
#include <cstring>

using namespace std;

  class lessStr : public binary_function<char *, char *, bool>
  {
  public:
    bool operator () ( const char * one, const char * two ) const
    { return( strcmp( one, two ) < 0 ); }
  };

int
main( int argc, char * argv[] )
{
  
  set< int, less<int> >	    intSet;

  intSet.insert( 5 );
  
  set< char *, lessStr >	args;

  char  testStr[ 64 ];
  strcpy( testStr, "test string" );

  for( int a = 1; a < argc; a++ )
    {
      pair< set< char *, lessStr >::iterator, bool >
	ins_it = args.insert( argv[a] );
    }

  for( set<char *, lessStr>::iterator them = args.begin();
       them != args.end();
       them++ )
    {
      
      cout << (*them) << endl;
    }
}
