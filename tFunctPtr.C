#include <iostream.h>

class It
{
public:
  It( int w );

  int comp( const It & rhs ) const;
  
  int comp1( const It & rhs ) const;
  int comp2( const It & rhs ) const;

private:
  
  int (It::*cmp)( const It & rhs );
  
};

It::It( int w )
{
  if( w == 1 )
    cmp = comp1;
  else
    cmp = comp2;
}

int
It::comp( const It & rhs ) const
{
  return( cmp( rhs ) );
}

int
It::comp1( const It & rhs ) const
{
  return( cmp == rhs.cmp ? 1 : 0 );
}

int
It::comp2( const It & rhs ) const
{
  return( cmp == rhs.cmp ? 1 : 0 );
}

  

int
main( int argc, char * argv[] )
{
  It a( 1 );
  It b( 2 );
}
