#include <iostream.h>


template<int n>
class some
{
public:
   int  what( void ) { return n; };
};

int main( int argc, char * argv[] )
{
   some<5> them;

   cout <<  them.what() << endl;
}
