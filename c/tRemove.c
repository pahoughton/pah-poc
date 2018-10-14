#include <unistd.h>
#include <stdio.h>
#include <errno.h>

int
main(  int argc, char * argv[] )
{
  static const char * rmfn = "/lookups/inbound/tlu/refdata/rmtest.remove";
  static const char * ulfn = "/lookups/inbound/tlu/refdata/rmtest.unlink";

  if( remove( rmfn ) ) {
    perror( rmfn );
  }
  errno = 0;
  if( unlink( ulfn ) ) {
    perror( ulfn );
  }

  return( 0 );
}
  
    
     
