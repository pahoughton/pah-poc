#include <stdlib.h>
#include <mmalloc.h>

#define VALUES  200
main( )
{

  int *  values[VALUES];
  int i;

  mmtrace(NULL);
  for( i = 0; i < VALUES; i++ )
  { 
     values[i] = malloc( sizeof( int ) ) ;
  }

  for( i = 0; i < VALUES; i++ )
  {
     int index = rand() % VALUES;

     if( values[ index ] != NULL )
       {
	 free( values[ index ] );
	 values[ index ] = NULL;
       }

   }

   exit(1);
}
