#include <unistd.h>
#include <stdio.h>
#include <pwd.h>

int main( )
{
    struct passwd * pent;
    pent = getpwuid( getuid() );
    printf( "%s\n", pent->pw_name );
}
