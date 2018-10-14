#include <Str.hh>

int
main( int argc, char * argv[] )
{

  Str tStr;

  Str sStr( "     ");

  //  sStr.stripEnds();
  sStr.reset();
  
  const char tChar[] = {0,0,0};
  
  cout << tStr << endl;
  cout << sStr << endl;
  cout << tChar << endl;

  //  tStr.dumpInfo( cout );
  //  sStr.dumpInfo( cout );
  
  return( 1 );
}

