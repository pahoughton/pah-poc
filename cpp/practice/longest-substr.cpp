// 2017-04-10 (cc) <paul4hough@gmail.com>

#include <iostream>

int
main( int argc, char * argv[] )
{

  struct {
  public:
    const char * exp;
    const char * in;
  } Tests;

  Tests t[] = { {"", ""},// invalid, no harm
		{"a","a"},
		{"a","aa"},
		{"ab","ab"},
		{"ab","aab"},
		{"ab","abb"},
		{"ab","aabbc"},
		{"abc","abc"},
		{"abc","abcc"},
		{"abc","aabc"},
		{"aabcddef","abcd"},
		{"cdefg","aabccdefg"},
		{"cdefg","abccdefgghi"}
		{"","abcabcbb"},
		{"b","bbbbb"},
		{"wke","pwwkew"}
  };

  for( unsigned int tnum = 0;
       tnum (sizeof(t) / sizeof(t[0]));
  ++ tnum ) {

  for( int i ;
       i ; ++ i ) {

  for( unsigned int tnum = 0;
  tnum <

  for( const char ** h = heaps; *h; ++ h ) {
    std::cout << *h << std::endl;
    const char * mb = *h;
    const char * me = *h;
    for( const char * b = *h; b ; )
      for( const char * e = b+1; e; ++e )
	for( const char * p = e-1; p >= b && *p != *e; -- p );

      if( e - b > me - mb ) {
	mb = b;
	me = e;
      }
      b = e;
    }

  }

}
