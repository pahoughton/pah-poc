#include <string.h>
#include <iostream.h>

const char * hay =
"this:is the hay stack that i'm going to test against it is fairly long so"
"my test will take more than a nanosecond. I just need a bunch of text to "
"my test will take more than a nanosecond. I just need a bunch of text to "
"my test will take more than a nanosecond. I just need a bunch of text to "
"my test will take more than a nanosecond. I just need a bunch of text to "
"check the timings:: btw I'm looking for the colon and spaces:";

int
main( int argc, char * argv[] )
{
  int cnt = atoi( argv[1] );

  size_t hayLen = strlen( hay );
  const char * hEnd = hay + hayLen;
  const char * needle = 0;
  
  const char * n1 = "_!&%$";
  const char * n2 = "_!&%$:";
  const char * n3 = ":_!&%$";
  const char * n4 = "_!&:%$";
  const char * n5 = "_!& %$";
  const char * n6 = " _!&%$";
  const char * n7 = "_!&%$ ";

  const char * h = hay;
  
  for( int i = 0; i < cnt; i++ )
    {
      
      strcspn( h, n1 );
      strcspn( h, n2 );
      strcspn( h, n3 );
      strcspn( h, n4 );
      strcspn( h, n5 );
      strcspn( h, n6 );
      strcspn( h, n7 );
    }
}
      
	
      
  
