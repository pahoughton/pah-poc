
#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

int main(int, char**)
{
  cout<<"Results of vec1_test:"<<endl;
  vector<int> v1; // Empty vector of integers.
  cout << "empty = " << v1.empty() << endl;
  cout << "size = " << v1.size() << endl;
  cout << "max_size = " << v1.max_size() << endl;
  v1.push_back(42); // Add an integer to the vector.
  cout << "size = " << v1.size() << endl;
  cout << "v1[0] = " << v1[0] << endl;
  return 0;
}
