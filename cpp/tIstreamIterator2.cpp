#include <iostream.h>
#include <vector.h>
#include <Str.hh>

class Abc;

istream &
operator << ( istream & src, Abc & dest );


int
main( int ac, char * av[] )
{
  vector< Abc > v;

  istream_iterator< Abc >	ii( cin );

  for( ; cin ; ++ii )
    {
      v.push_back( *ii );
    }
      

  for( vector< Abc >::iterator them = v.begin();
       them != v.end();
       them++ )
    {
      cout << *them << endl;
    }
}
