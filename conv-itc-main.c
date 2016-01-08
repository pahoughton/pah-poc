#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <limits.h>
#include <string.h>
#include <malloc.h>
#include <errno.h>

static const char PngSig[] = { '\211', 'P', 'N', 'G' };
static const char JpgSig[] = { '\377', '\330', '\377' };
static const size_t NPOS = INT_MAX;

const char *
StringSearch(
  const char *  haystack,
  size_t    	hayLen,
  const char *  needle,
  size_t    	needleLen
  )
{

  if( ! haystack ||
      ! hayLen	 ||
      ! needle   ||
      ! needleLen )
    return( 0 );
  
  size_t    nLen = (needleLen != NPOS) ? needleLen : strlen( needle );
  size_t    hLen = (hayLen != NPOS ) ? hayLen : strlen( haystack );

  if( ! hLen || ! nLen || nLen > hLen ) return( 0 );
  
  const char * hEnd = &(haystack[ hLen - nLen ]);
  const char * nEnd = &(needle[ nLen ]);

  register const char *     hay = haystack;
  register const char 	    ndlOne = *needle;
  
  while( hay <= hEnd )
    {

      
      for( ; hay <= hEnd && *hay != ndlOne; hay++ );


      if( hay > hEnd ) return( 0 );

      hay++;


      
      register const char * rHay = hay;	
      register const char * rNdl = needle + 1;
      

      
      for( ; *rHay == *rNdl && rNdl < nEnd; rHay++, rNdl++ );


      if( rNdl >= nEnd ) return( (rHay - nLen) );
    }
  return( 0 );
}

int
main( int argc, char ** argv )
{
  int infd;
  int outfd;
  char	buf[ 8192 ];
  ssize_t	len;

  char * oname = malloc( strlen( argv[1] ) + 10 );
  strcpy( oname, argv[1] );
  
  infd = open( argv[1], O_RDONLY );

  len = read( infd, buf, sizeof( buf ) );

  if( memcmp( buf + 500, PngSig, sizeof( PngSig ) ) == 0 ) {
    strcat( oname, ".png" );
  } else if( memcmp( buf + 500, JpgSig, sizeof( JpgSig ) ) == 0 ) {
    strcat( oname, ".jpg" );
  } else {
    printf( "UNK: %s\n", oname );
    exit( 1 );
  }
  printf( "CNV: %s\n", oname );

  outfd = open( oname, O_WRONLY | O_CREAT );
  if( outfd < 1 ) perror( oname );
  write( outfd, buf + 500, len - 500 );
  

  {
    int		foundPng = 0;
    
    while( (len = read( infd, buf, sizeof( buf ) )) > 0 ) {
      write( outfd, buf, len );
    }
  }
  return( 0 );
}
