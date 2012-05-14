#include <stdio.h>
#include <arpa/inet.h>

int main( int argc, char * argv )
{
  /*
h32	uint32_t	84123
  l32	uint32_t	115158592
  */
  uint32_t h32 = 84123;
  uint32_t l32 = 115158592;

  int64_t i64 = h32;
  int64_t l64 = l32;
  printf( "%ld %lx %lx\n",i64,i64,l64 );
  i64 <<= 32;
  printf( "%ld %lx %lx\n",i64,i64,l64 );
  i64 |= l64;
  printf( "%ld %lx %lx\n",i64,i64,l64 );
  
}
