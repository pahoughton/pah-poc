#include <stream.h>

class  DN
{
public:
  int   i;
};

class Test
{
public:
   DN	dn;

   DN & DN() { return dn; };
};

main( int argc, char *argv[] )
{
  Test	t;

  t.dn.i = 5;

  cout << "It is: " << t.DN().i << " \n";
  }
