#include <iostream>

#include <utility>

  
using namespace std;

class Test
{
public:

  Test( int i ) : v( i ) {};
  Test( void ) : v( 0 ) {};

  bool operator == ( const Test & rhs ) const { return( v == rhs.v ); };
  bool operator < ( const Test & rhs ) const { return( v < rhs.v ); };

private:

  int v;
};

int
main( int argc, char * argv[] )
{

  Test a(5);
  Test b(10);

  cout << "<  " << (a < b) << '\n'
       << "== " << (a == b) << '\n'
       << ">  " << (a > b) << '\n'
       << "!= " << (a != b) << '\n'
       << endl;
}
