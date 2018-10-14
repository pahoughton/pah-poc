#include <strstream.h>

int
main( int argc, char * argv[] )
{
  strstream t;

  t << "Fist Test Message Text" << ends;
  cout << t.str() << endl;;

  t.freeze(0);
  t.seekp(0);
  t.seekg(0);
  
  t << "Second Test Message" << ends;
  cout << t.str() << endl;

  return(0);
}
