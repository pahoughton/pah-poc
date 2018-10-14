#include <iostream>
#include <cstdlib>
#include <ctime>

void
dumpTm( const struct tm & tm )
{
  cout << "year:    " << tm.tm_year << '\n'
       << "month:   " << tm.tm_mon << '\n'
       << "mday:    " << tm.tm_mday << '\n'
       << "hour:    " << tm.tm_hour << '\n'
       << "min:     " << tm.tm_min << '\n'
       << "sec:     " << tm.tm_sec << '\n'
       << "is dst:  " << tm.tm_isdst << '\n'
       << "gmt off: " << tm.tm_gmtoff / (60 * 60) << '\n'
       << "zone:    " << tm.tm_zone << '\n'
    ;
}

    
int
main( int argc, char * argv[] )
{
  time_t	cur = time(0);
  struct tm	ltm;
  struct tm	gtm;

    
  putenv( "TZ=MST7" );
  
  cout << "TZ: " << getenv("TZ") << endl;

  cout << "init" << '\n'
       << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl << endl;

  tzset();
  
  cout << "tzset" << '\n'
       << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl << endl;

  memcpy( &gtm, gmtime( &cur ), sizeof( gtm ) );
  
  cout << "gmtime" << '\n'
       << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl << endl;

  memcpy( &ltm, localtime( &cur ), sizeof( ltm ) );

  cout << "localtime" << '\n'
       << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl << endl;

  dumpTm( gtm );
  dumpTm( ltm );
  
  struct tm fgtm;
  struct tm fltm;
  
  time_t    feb;
  
  memcpy( &fgtm, &gtm, sizeof( fgtm ) );

  fgtm.tm_mon = 1;

  feb = mktime( &fgtm );

  memcpy( &fltm, localtime( &feb ), sizeof( fltm ) );
  
  cout << "localtime" << '\n'
       << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl << endl;

  dumpTm( fltm );
  
  
#if defined( FIXME )
  putenv( "TZ=CST6CDT" );
  
  tzset();
    
  cout << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl;

  localtime( &cur );
    
  cout << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl;

  putenv( "TZ=MST7MDT" );
  
  tzset();
    
  cout << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl;

  struct tm ltm;
  struct tm gtm;

  memcpy( &gtm, gmtime( &cur ), sizeof( gtm ) );
  memcpy( &ltm, localtime( &cur ), sizeof( ltm ) );
    
  cout << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl
       << gtm.tm_hour << endl
       << "o: " << gtm.tm_gmtoff << endl
       << ltm.tm_hour << endl
       << "o: " << ltm.tm_gmtoff << endl
       << "d: " << daylight << endl
    ;
  
  gtm.tm_mon = 2;

  time_t feb( mktime( &gtm ) );

  struct tm fltm;
  struct tm fgtm;

  memcpy( &fgtm, gmtime( &feb ), sizeof( fgtm ) );
  memcpy( &fltm, localtime( &feb ), sizeof( fltm ) );
  tzset();
  
  cout << tzname[0] << endl
       << tzname[1] << endl
       << timezone << endl
       << cur << endl
       << feb << endl
       << ltm.tm_hour << endl
       << fgtm.tm_hour << endl
       << fltm.tm_hour << endl
       << ltm.tm_isdst << endl
       << fltm.tm_isdst << endl
       << ltm.tm_mon << endl
       << fltm.tm_mon << endl
       << "o: " << fltm.tm_gmtoff / (60*60) << endl
       << "d: " << daylight << endl

       ;
  cout << asctime( &fgtm ) << endl;
  cout << asctime( &fltm ) << endl;
  cout << asctime( &ltm ) << endl;
  
    ;

#endif  
}
