#include <stdio.h>

int
main( int argc, char * argv[] )
{
  if( argc < 3 )
    {
      printf("Need path and prefix\n");
      exit(1);
    }

  printf( "tempnam( '%s', '%s' ) = \n'%s'\n",
	  argv[1],
	  argv[2],
	  tempnam( argv[1], argv[2] ) );
  return( 0 );
}
