#ifndef SINGLE
//  An adapted ObjectSpace example for use with SGI STL

#include <iostream.h>
#include <defalloc.h>
#include <vector.h>
#include <algo.h>
#ifdef MAIN 
#define vec3_test main
#endif
#endif
int vec3_test(int, char**)
{
  cout<<"Results of vec3_test:"<<endl;
  __vector__<char, allocator<char> > v1; // Empty vector of characters.
  v1.push_back('h');
  v1.push_back('i');
  cout << "v1 = " << v1[0] << v1[1] << endl;
  __vector__<char, allocator<char> > v2(v1.begin(), v1.end());
  v2[1] = 'o'; // Replace second character.
  cout << "v2 = " << v2[0] << v2[1] << endl;
  cout << "(v1 == v2) = " <<(v1 == v2) << endl;
  cout << "(v1 < v2) = " <<(v1 < v2) << endl;
  return 0;
}
