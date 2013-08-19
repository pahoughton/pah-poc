#include <iostream>

#include <vector>

struct Me
{
  Me( int aa, int ab ) : a( aa ), b( ab ) {} ;
  
  int a;
  int b;
};

struct You
{
  You( char c, char d ) : ch( c ), du( d ) {} ;
  
  char ch;
  char du;
};

ostream &
operator << ( ostream & dest, const You & obj )
{
  dest << "You: " <<  obj.ch << ' ' << obj.du;
  return( dest );
}

ostream &
operator << ( ostream & dest, const Me & obj )
{
  dest << "Me: " <<  obj.a << ' ' << obj.b;
  return( dest );
}



typedef vector< Me > MeList;
typedef vector< You > YouList;

int
main( int argc, char * argv[] )
{
  MeList  ml;
  YouList ul;

  for( int i = 5; i < 20; ++ i )
    {
      ml.push_back( Me( i, i + 5 ) );
    }


  for( int c = 'A' ; c < 'p'; c += 2 )
    {
      ul.push_back( You( c, c+ 1 ) );
    }

  for( MeList::const_iterator them = ml.begin();
       them != ml.end();
       ++ them )
    cout << (*them) << endl;

  cout << endl;
  
  for( YouList::const_iterator them = ul.begin();
       them != ul.end();
       ++ them )
    cout << (*them) << endl;
}


  
