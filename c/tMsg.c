#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

int
main( int argc, char * argv[] )
{

  key_t	k;
  int m;

  struct msqid_ds mds;
  memset( &mds, 0, sizeof( mds ) );
  
  k = ftok( argv[0], 't' );

  m = msgget( k, IPC_CREAT | 0666 );

  if( m < 0 )
    {
      perror( "msgget: " );
    }

  {
    struct mdata
    {
      long t;
      char d[10];
    } smesg, rmesg;

    smesg.t = 1;
    strcpy( smesg.d, "paul" );
    
    if( msgsnd( m, &smesg, sizeof( smesg ) - sizeof( long ), 0 ) )
      perror( "msgsnd: " );

    if( msgrcv( m, &rmesg, sizeof( rmesg ) - sizeof( long ), 0, 0 ) )
      perror( "msgrcv: " );
  }
      
  if( msgctl( m, IPC_STAT, &mds ) )
    perror( "msgctl: " );

  if( msgctl( m, IPC_RMID, &mds ) )
    perror( "msgctl: " );

  return( 0 );
}

  
