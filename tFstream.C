#include <fstream.h>

int
main( int argc, char * argv[] )
{
  ofstream t( "BAD_DIR/BAD_FN" );

  cout << (t.good() ? "good" : "not good" ) << endl;
  cout << t.rdstate() << endl;

  return(0);
}
