#include <fcntl.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>

main( int argc, char * argv[] )
{

  int	fd;
  struct stat st;
  struct flock fl;
  
  
  if( (fd = open( argv[1], O_RDWR | O_CREAT, 0666 | S_ENFMT )) < 0 )
    {
      perror( argv[1] );
      exit(1);
    }

  memset( &fl, 0, sizeof( fl ) );
  
  fl.l_type = F_WRLCK;
  fl.l_whence = SEEK_SET;
  fl.l_start = 0;
  fl.l_len   = 0;  
  
  if( fcntl( fd, F_SETLK, &fl ) == -1 )
    {
      perror( argv[1] );
      exit(1);
    }

  sleep( atoi( argv[2] ) );

  close( fd );
  exit(0);
}

