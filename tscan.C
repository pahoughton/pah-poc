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
  
  for( int i = 0; i < cnt; i++ )
    {
      const char * h = hay;
      
      needle = "_!&%$";
      for( size_t pos = strcspn( h, needle );
	  h + pos < hEnd;
	  pos = strcspn( (h += pos + 1), needle ) )
//	cout << "at: " << pos + (h - hay) << " h " << h - hay << endl
	  ;
      
      h = hay;
      needle = "_!&%$:";
      for( size_t pos = strcspn( h, needle );
	  h + pos < hEnd;
	  pos = strcspn( (h += pos + 1), needle ) )
//	cout << "at: " << pos + (h - hay) << " h " << h - hay << endl
	  ;

      h = hay;
      needle = ":_!&%$";
      for( size_t pos = strcspn( h, needle );
	  h + pos < hEnd;
	  pos = strcspn( (h += pos + 1), needle ) )
//	cout << "at: " << pos + (h - hay) << " h " << h - hay << endl
	  ;

      h = hay;
      needle = "_!&:%$";
      for( size_t pos = strcspn( h, needle );
	  h + pos < hEnd;
	  pos = strcspn( (h += pos + 1), needle ) )
//	cout << "at: " << pos + (h - hay) << " h " << h - hay << endl
	  ;

      h = hay;
      needle = "_!& %$";
      for( size_t pos = strcspn( h, needle );
	  h + pos < hEnd;
	  pos = strcspn( (h += pos + 1), needle ) )
//	cout << "at: " << pos + (h - hay) << " h " << h - hay << endl
	  ;

      h = hay;
      needle = " _!&%$";
      for( size_t pos = strcspn( h, needle );
	  h + pos < hEnd;
	  pos = strcspn( (h += pos + 1), needle ) )
//	cout << "at: " << pos + (h - hay) << " h " << h - hay << endl
	  ;

      h = hay;
      needle = "_!&%$ ";
      for( size_t pos = strcspn( h, needle );
	  h + pos < hEnd;
	  pos = strcspn( (h += pos + 1), needle ) )
//	cout << "at: " << pos + (h - hay) << " h " << h - hay << endl
	  ;

    }
}
      
	
      
  
