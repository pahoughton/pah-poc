#include <stdio.h>


int main( int argc, char * argv[] )
{
  unsigned char * vals = "\211PNG\r\n";
  printf( "%o%c%c%c\n",vals[0],vals[1],vals[2],vals[3]);
}
