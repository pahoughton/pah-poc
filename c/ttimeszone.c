#include <stdio.h>
#include <time.h>

int main( int argc, char * argv )
{

  printf( "timezone: %ld  tzname: %s daylight: %d\n",
	   timezone, tzname[timezone], daylight );
  tzset();

  printf( "After tzset() timezone: %ld  tzname: %s daylight: %d\n",
	   timezone /60 / 60, tzname[daylight], daylight );

  putenv("TZ=EST");
  tzset();

  printf( "After tzset() timezone: %ld  tzname: %s daylight: %d\n",
	   timezone /60 / 60, tzname[daylight], daylight );

  {
    time_t secs = time(0);

    struct tm gtm;
    struct tm ltm;

    memcpy( &gtm, gmtime( &secs ), sizeof( gtm ) );
    memcpy( &ltm, localtime( &secs ), sizeof( ltm ) );

    printf("off:g:%d:l:%d\n",gtm.tm_gmtoff,ltm.tm_gmtoff);
  }
}
