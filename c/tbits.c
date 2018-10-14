#include <stdio.h>
int main( int argc, char * argv[] )
{
  unsigned long l,h;
  unsigned long hbits, lbits;
  unsigned long maxValue;
  
  l=0;
  hbits = atoi(argv[1]);
  lbits = 8 - hbits;

/*  maxValue = (1U << 30U) >> 24 - ((hbits) * 2);

  printf("%u\n",maxValue );
*/
  for( h = 0; h < (1 << hbits ); h++ )
   { 
      unsigned long high, nexthigh;
      high = h * h * h * 128;
	
      for( l = 0; l < (1 << lbits ); l++ )

           printf("%3u %3u => %u\n", h, l, 
		  high + 
		  (((h+1)*(h+1)*(h+1)*128)/(1<<lbits)) * l
		 );

   }
}
