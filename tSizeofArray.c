#include <stdio.h>

int main( int argc, char * argv[] )
{
   long   array[ 15 ];

   printf( "sizeof( array ) == %d / sizeof(array[0]) == %d\n",
	   sizeof( array ), sizeof( array )/sizeof(array[0]) );
}
