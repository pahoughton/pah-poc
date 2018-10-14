#include <iostream.h>
#include <iomanip.h>

int
main( int argc, char * argv[] )
{
  char oldFill = cout.fill( '0' );
  int oldFlags = cout.setf( ios::hex );
  
   for(;;)
    {
       unsigned long val;
       cin >> val;
       if( ! cin.good() )
	 break;
       
       cout << hex << setw(2) << val << endl;
    }

   cout.fill( oldFill );
   cout.flags( oldFlags );
   
   cout << 1234 << endl;
   cout << 9 << endl;
   
}
