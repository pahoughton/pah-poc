
#include <DateTime.hh>
#include <time.h>
int
main( int argc, char * argv[] )
{
  DateTime dt( "20050501", "120000" );

  time_t  secs( dt.getTimeT() );
  
  struct tm testTm;

  gmtime_r( &secs, &testTm );

  cout << "is dst: " << testTm.tm_isdst << endl;
}
