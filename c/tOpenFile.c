#include <stdio.h>

int main( int argc, char * argv[] )
{
   if( ! fopen( argv[1], "r") )
      perror( argv[1] );
}
