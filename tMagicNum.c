#include <stdio.h>
int main( int argc, char * argv[] )
{
  unsigned long l,h;
  unsigned long hbits, lbits;
  unsigned long maxValue;
  unsigned long prev = 0;
  unsigned long diff = 0;
  l=0;
  hbits = 4;
  lbits = 8 - hbits;

/*  maxValue = (1U << 30U) >> 24 - ((hbits) * 2);

  printf("%u\n",maxValue );
*/
  for( h = 0; h < (1 << hbits ); h++ )
   { 
      unsigned long value;
	
      for( l = 0; l < (1 << lbits ); l++ )
{ value = (1 << (h+4)) + (l*(1<<h)) -(1<<4); diff = value - prev; prev = value; 
/*           printf("%3u %3u => %u\n", h, l,  */
           printf("%u\n",  
		  value
		 );
}
   }
}
