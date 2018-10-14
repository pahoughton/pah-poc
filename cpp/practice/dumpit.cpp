// 2017-04-10 (cc) <paul4hough@gmail.com>

#include <iostream>
#include <fstream>

main( int argc, char * argv[] )
{
  if( argc != 2 ) {
    std::cerr << "err: no file name" << std::endl;
    return( 2 );

  } else {
    std::ifstream in(argv[1]);
    std::string   line;
    while( in ) {
      in >> line;
      std::cout << line << std::endl;
    }
  }

}
