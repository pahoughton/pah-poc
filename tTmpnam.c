#include <stdio.h>

main( int argc, char * argv[] )
{
  int i = 0;
  for(; i < 5000; i++ )
  printf( "%s\n", tmpnam(0) );
}
