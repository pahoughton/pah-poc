#include <stdio.h>
#include <unistd.h>

int
main( int argc, char * argv[], char * env[] )
{
   printf( "Runing: %s\n", argv[1] );
   execve( argv[1], argv, env );
   printf( "after: %s\n", argv[1] );
   perror( "bad :" );
}
