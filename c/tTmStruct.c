#include <stdio.h>
#include <time.h>

int main( int argc, char * argv )
{
	struct tm   	tmDate;
	time_t		datePart;
	struct tm	tmTime;
	time_t		todPart;
	struct tm       gmtDate;

	strptime( "2/1/95","%m/%d/%y",&tmDate );
	strptime( "05:45:50", "%H:%M:%S", &tmTime );

	datePart = mktime( &tmDate );
	todPart = mktime( &tmTime );

	memcpy( &gmtDate, gmtime( &datePart ), sizeof( struct tm ) );

	printf( "%s\n", ctime( &datePart ) );
	printf( "%s\n", ctime( &todPart ) );
}
