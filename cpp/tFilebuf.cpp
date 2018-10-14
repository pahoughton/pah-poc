#include <iostream>
#include <fstream>

using namespace std;

#define TEST_FN	    "/tmp/tfilebuf.tmp"

int main( int argc, char * argv[] )
{
  remove( TEST_FN );
  
  filebuf   fbuf;

  if( fbuf.open( TEST_FN, ios::out, 0664 ) == 0 )
    {
      cout << "open ios::out failed." << endl;
    }
  fbuf.close();

  remove( TEST_FN );
}
