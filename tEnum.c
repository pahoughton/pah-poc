#include <stdio.h>

typedef enum {
  ZERO,
  ONE,
  TWO,
  THREE,
  F_UNDEFINED
} First;

typedef enum {
  FOUR = F_UNDEFINED,
  FIVE,
  SIX,
  SEVEN,
  LAST
} Second;

int main( int argc, char * argv )
{
  printf( "%d\n", ZERO );
  printf( "%d\n", ONE );
  printf( "%d\n", TWO );
  printf( "%d\n", THREE );
  printf( "%d\n", FOUR );
  printf( "%d\n", FIVE );
  printf( "%d\n", SIX );
  printf( "%d\n", SEVEN );
}
