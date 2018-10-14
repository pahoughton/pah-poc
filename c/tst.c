#include <stdio.h>
struct x {
	int	a;
	int	b;
};

struct y {
	int a;
	struct x s[10];
	int b;
};

struct y z[] = {
	{1, {{2,2},{3,3},{4,4},{0,0}}, 1},
	{2, {{2,2},{3,3},{4,4},{0,0}}, 1},
	{3, {{2,2},{3,3}}, 1},
	{4, {{2,2},{3,3},{4,4},{0,0}}, 1},
	{5, {{2,2},{3,3},{4,4},{0,0}}, 1}
};

int main( int argc, char * argv[] )
{
  printf("%d\n",z[2].s[2].a);
}

