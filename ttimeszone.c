#include <stdio.h>
#include <time.h>

int main( int argc, char * argv )
{
  
  printf( "timezone: %d  tzname: %s daylight: %d\n",
	   timezone, tzname[timezone], daylight );
  tzset();
  
  printf( "After tzset() timezone: %d  tzname: %s daylight: %d\n",
	   timezone, tzname[daylight], daylight );
}
