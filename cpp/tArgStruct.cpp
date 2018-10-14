#include <iostream>

struct Args
{
  union {
    int & i;
    long & l;
  };
  int		defaultValue;
  const char *	argId;
  const char *	envVar;
  struct {
    const char *	shortDesc;
    const char *	longDesc;
  } desc;
};

int argOne;
int argTwo;
long argThree;

static Args args[] =
  {
    { argOne,	0,	"one",	    0,	{ "This is the short desc",
					  "this is the Long desc" } },
    { argTwo,	0,	"two",	    0, { "short two",
					 "much longer two" } }
    /* This does NOT WORK
    { argThree,	0,	"three",    0, { "short 3",
					 "long 3" } }
    */
  };

int main( int argc, char * argv[] )
{
  std::cout << args[0].desc.shortDesc << std::endl;
}
