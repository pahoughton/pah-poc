/*********************************************************************
 *
 * File:        tapeinfo.c
 * Project:	Tape
 * Desc:
 *
 *  
 *
 * Notes:
 *
 * Author:	Paul A. Houghton - (paul.houghton@wcom.com)
 * Created:	04/17/99 07:05
 *
 * Revision History: (See end of file for Revision Log)
 *
 *  Last Mod By:    $Author: $
 *  Last Mod:	    $Date: $
 *  Version:	    $Revision: $
 *
 *********************************************************************/

#include <sys/stat.h>
#include <fcntl.h>

int
main( int argc, char * argv[] )
{
  int fd;
  
  struct stat st;

  fd = open( "/dev/ht0", O_RDONLY, 0 );
  fstat( fd, &st );

  printf( "dev      : %d\n"
	  "ino      : %d\n"
	  "mode     : %d\n"
	  "rdev     : %d\n"
	  "size     : %d\n"
	  "blksize  : %d\n"
	  "blocks   : %d\n"
	  "\n",
	  st.st_dev,
	  st.st_ino,
	  st.st_mode,
	  st.st_rdev,
	  st.st_size,
	  st.st_blksize,
	  st.st_blocks );

  {
    char buf[ 4096 ];
    int ret;
    int total;
    
    while( (ret = read( fd, &buf, 4096 )) > 0 )
      total += ret;

    printf( "total %d\n", total );
  }
}

/*
 *
 * Revision Log:
 *
 * $Log:$
 *
 */
