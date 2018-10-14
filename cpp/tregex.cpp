// 2017-05-01 (cc) <paul4hough@gmail.com>

#include <iostream>
#include <regex>

using namespace std;

int main( int argc, char * argv[] ) {

  static const char * repat =
    "[^0-9]*" "([0-9]+)/([0-9]+)/([0-9]+)"
    "[^0-9]*" "([0-9]*):*([0-9]*):*([0-9]*)";

  regex pat(repat);

  const char * strs[] = {
    "10/9/62 1:1:1",
    "05/01/2017 05:32",
    "10/09/02 15:45:15",
    0
  };

  for( const char ** them = strs; *them; ++ them ) {
    cout << "str:" << *them << endl;
    cmatch rmatches;
    if( regex_match( *them, rmatches, pat ) ) {
      cout << "m:" << rmatches.str()
	   << ":c:" << rmatches.size() << endl;
      for( unsigned i = 1 ; i < rmatches.size() ; ++ i ) {
	cout << "  s:" << rmatches[i] << endl;
      }
    } else {
      cout << "no match" << repat << endl;
    }
  }
  return( 0 );
}
