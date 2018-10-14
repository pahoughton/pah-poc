#define _MIT_POSIX_THREADS  1
#include <pthread.h>
#include <stdio.h>

void *
Thread( void * v )
{
  fprintf( stderr,"in thread\n" );
  sleep( 20 );
  pthread_exit( 0 );
}

int
main( int argc, char * argv[] )
{
  pthread_t  t;

  for( ;; )
    {
      int err = pthread_create( &t, 0, Thread, 0 );
      pthread_detach( t );
      sleep( 5 );
    }
}
      
