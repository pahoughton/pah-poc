#include <vector>
#include <algorithm>
#include <functional>

int
main( int argc, char * argv[] )
{
  vector< int >  list;

  list.push_back( 5 );
  list.push_back( 4 );
  list.push_back( 3 );
  list.push_back( 2 );
  list.push_back( 1 );
  list.push_back( 0 );

  less<int> cmp;
  
  sort( list.begin(), list.end(), cmp  );
}

