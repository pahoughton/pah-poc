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
      for( ; *n1; n1++ ) memchr( h, *n1, hayLen );
      for( ; *n2; n2++ ) memchr( h, *n2, hayLen );
      for( ; *n3; n3++ ) memchr( h, *n3, hayLen );
      for( ; *n4; n4++ ) memchr( h, *n4, hayLen );
      for( ; *n5; n5++ ) memchr( h, *n5, hayLen );
      for( ; *n6; n6++ ) memchr( h, *n6, hayLen );
      for( ; *n7; n7++ ) memchr( h, *n7, hayLen );
      
    }
}
      
	
      
  
