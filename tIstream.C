#include <iostream.h>


int
main( int argc, char * argv[] )
{

  int num;

  cout << "Enter two Numbers: " ;
  cout.flush();
  
  cin >> num;

  if( ! cin.good() )
    cout << "cin state: " << cin.rdstate() << endl;

  cout << "The number is: " << num << endl;

  cin >> num;

  if( ! cin.good() )
    cout << "cin state: " << cin.rdstate() << endl;

  cout << "The number is: " << num << endl;

}
