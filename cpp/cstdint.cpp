// 2017-04-18 (cc) <paul4hough@gmail.com>
#include <cstdint>
#include <iostream>
int
main( int argc, char * argv[] )
{
  int16_t i16;
  int32_t i32;
  int64_t i64;

  uint16_t u16;
  uint32_t u32;
  uint64_t u64;

  std::cout
    << "i16 " << sizeof(i16) << std::endl
    << "i32 " << sizeof(i32) << std::endl
    << "i64 " << sizeof(i64) << std::endl
    << "u16 " << sizeof(u16) << std::endl
    << "u32 " << sizeof(u32) << std::endl
    << "u64 " << sizeof(u64) << std::endl
    ;

}
