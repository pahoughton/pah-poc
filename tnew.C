#include <new.h>

int
main( int argc, char * argv[] )
{
  for( int l = 0; l < 50000; l++ )
{
  size_t cnt = 100;
  char ** b = new char * [ cnt ];
  
  for( size_t c = 0; c < cnt; c++ )
    b[c] = new char[ (c / 5) + 2 ];
  for( size_t c = 0; c < cnt; c++ )
    delete b[c];

  delete b;
}
}
