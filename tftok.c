#include <stdio.h>
#include <sys/types.h>
#include <sys/ipc.h>

main()
{
   printf( "%d\n", ftok( "/home/houghton", 0 ) );
}
