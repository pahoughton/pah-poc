#include <unistd.h>

#include <sys/mman.h>
#include <fcntl.h>

int
main( int argc, char * argv[] )
{

  char * base = 0;
  int mapFd = open( "data.map", (O_CREAT | O_RDWR ), 0666 );
  
  lseek( mapFd, 4096 - sizeof( int ), SEEK_SET );

  {
    int i = 0;
    write( mapFd, &i, sizeof( i ) );
    lseek( mapFd, 0, SEEK_SET );
    write( mapFd, &i, sizeof( i ) );
  }
  
  base = mmap( 0x50000000,
	       4096,
	       PROT_READ  | PROT_WRITE,
	       MAP_SHARED | MAP_FIXED,
	       mapFd,
	       0 );
    

  strcpy( base, "test output" );

  munmap( base, 4096 );
  
  close( mapFd );
}

