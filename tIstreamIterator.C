#include <iostream.h>
#include <vector.h>
#include <Str.hh>
int
main( int ac, char * av[] )
{
  vector< Str > v;

  istream_iterator< Str >	ii( cin );

  for( ; cin ; ++ii )
    {
      v.push_back( *ii );
    }
      

  for( vector< Str >::iterator them = v.begin();
       them != v.end();
       them++ )
    {
      cout << *them << endl;
    }
}
