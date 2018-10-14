
#ifndef _t_hpp_
#define _t_hpp_
// 2017-04-18 (cc) <paul4hough@gmail.com>

#include <iostream>

class t
{

public:

  t( void );

  virtual ~t( void );

protected:

private:

  t( const t & from );
  t & operator =( const t & from );

};

ostream &
operator << ( ostream & dest, const t & src );

istream &
operator >> ( istream & src, const t & dest );


#endif /* ! def _t_hpp_ */
