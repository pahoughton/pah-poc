// #include <SortOrder.hh>
#include <iostream.h>
#include <vector>

template < class T >
class Junk
{
public:

  class Frank
  {
  public:
    void go( void );
  private:
    long l;
  };
  
  typedef vector< Frank >	LongList;

  inline void doIt( void ) const;

private:

  LongList ll;
};

template < class T >
inline void Junk<T>::doIt( void ) const
{
  // ll.push_back( 5L );
  // ll.push_back( 10L );

  for( LongList::const_iterator them = ll.begin();
       them != ll.end();
       ++ them )
    {
      cout << "*them" << endl;
    }
}

int main( int argc, char * argv[] )
{

  Junk<int> j;

  return(1);
}
