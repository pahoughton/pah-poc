/*********************************************************************
 *
 * File:        main.c
 * Project:	MapMemTest
 * Desc:
 *
 *  
 *
 * Notes:
 *
 * Author:	Paul Houghton 719-527-7834 - (paul.houghton@wcom.com)
 * Created:	03/19/98 16:47
 *
 * Revision History: (See end of file for Revision Log)
 *
 *  Last Mod By:    $Author$
 *  Last Mod:	    $Date$
 *  Version:	    $Revision$
 *
 *********************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/mman.h>

static const char * FileName = "test.map";


caddr_t
MapIt( int fd, size_t size )
{
    
  char      byte = 0;
  caddr_t   base;
  
  if( lseek( fd, size - 1, SEEK_SET ) < 0 )
    {
      perror( "lseek" );
      exit( 1 );
    }

  if( write( fd, &byte, 1 ) != 1 )
    {
      perror( "write" );
      exit( 1 );
    }

  base = (caddr_t)mmap( 0, size,
			PROT_READ | PROT_WRITE,
			MAP_SHARED,
			fd, 0 );

  if( base == 0 )
    {
      perror( "mmap" );
      exit( 1 );
    }

  return( base );
  
}

void
TestLongs( caddr_t map, size_t size )
{
  long *    ptr = (long *)map;
  size_t   i = 0;

  long	    data = 0x55555555; /* i.e. 0101 0101 0101 0101 ... */
  
  for( ; i < (size / sizeof( long )); ++ i, ++ ptr )
    *ptr = data;
}

void
TestChar( caddr_t map, size_t size )
{
  char *	ptr = (char *)map;
  size_t	i = 0;
  const char 	data[] = "paul.houghton@wcom.com";

  for( ; i < (size / (sizeof( data ) + 1 )); ++ i, ptr += sizeof( data ) - 1)
    memcpy( ptr, data, sizeof( data ) - 1 );
}

    
      
void
UnMap( int fd, caddr_t map, size_t size )
{
  munmap( map, size );
  close( fd );
}

int
main( int argc, char * argv[] )
{
  size_t    count = 1;
  
  int	    fd;
  size_t    size = ( (4096 * 2) * 10240 ) ; /* 80 meg */
  caddr_t   map;

  for( ;; ++ count )
    {
      if( (count % 10) == 0 )
	printf( "%d iterations.\n", count );
      
	  
      remove( FileName );
      
      if( (fd = open( FileName, O_RDWR | O_CREAT, 0666 ) ) < 0 )
	{
	  perror( "open" );
	  exit( 1 );
	}

      map = MapIt( fd, size );

      TestLongs( map, size );
      TestChar( map, size ); 

      UnMap( fd, map, size );
    }
}

/*
 *
 * Revision Log:
 *
 * $Log$
 * Revision 1.1  2011/12/28 11:32:47  paul
 * *** empty log message ***
 *
 *
 */

