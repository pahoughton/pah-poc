#include <stdio.h>

int main( int argc, char ** argv )
{
  int num=52;
  char buf[32];
  
  puts( itoa( num, buf, 10 ));
}
