#include <iostream.h>
#include <set.h>

int
main( int argc, char * argv[] )
{
  class lessStr : binary_function< char *, char *, bool> 
  {
  public:
    bool operator () ( const char * one, const char * two ) const
    { return( strcmp( one, two ) < 0 ); }
  };
  
    
  set< char *, lessStr >	args;

  for( int a = 1; a < argc; a++ )
    {
      args.insert( argv[a] );
    }

  for( set<char *, lessStr>::iterator them = args.begin();
       them != args.end();
       them++ )
    {
      cout << (*them) << endl;
    }
}
