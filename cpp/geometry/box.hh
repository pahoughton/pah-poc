
// these are the 'most' values found in the line data, then rounded up/down
// by box min/max value accordingly

long	mostNorth;
long	mostSouth;
long	mostEast;
long	mostWest;

long	gridDown = ( mn - ms / 10000 );
long	gridAcross = ( me - mw / 10000 );


//  n/w = exact upper left corner exactly
//
//  + + + + + + + + + + + + + + + +
//  + + + + + + + + + + + + + + + +
//  + + + + + + + + + + + + + + + +
//  + + + + * * * * * * * * + + + +
//  + + + + * * * * * * * * + + + +
//  + + + + * * * * * * * * + + + +
//  + + + + * * * * * * * * + + + +
//  + + + + * * * * * * * * + + + +
//  + + + + * * * * * * * * + + + +
//  + + + + * * & & & * * * + + + +
//  + + + + + + + + + + + + + + + +
//  + + + + + + + + + + + + + + + +
//  + + + + + + + + + + + + + + + +
//
//                 s/e = exactly lower right value


// the x,y runs all pos for this example

HashValue
HashFunct( long n, long w )
{
    
  long vert = mostNorth - n;
  long hort = mostWest - w;

  long hortOffset = hort / gridAcross;

  long vertOffset = vert / gridDown;

  return( hortOffset * gridDown + vert );
}

//  + + + + + + + + + + + + + + + +
//  + + + + + + + + + + + + + + + +
//  + + + + + + + + + + + + + + + +
//  + + + + 0 7 * * * * * * + + + +
//  + + + + 1 8 * * * * * * + + + +
//  + + + + 2 9 * * * * * * + + + +
//  + + + + 3 0 * * * * * * + + + +
//  + + + + 4 * * * * * * * + + + +
//  + + + + 5 * * * * * * * + + + +
//  + + + + 6 * & & & * * * + + + +
//  + + + + + + + + + + + + + + + +
//  + + + + + + + + + + + + + + + +
//  + + + + + + + + + + + + + + + +


vector< Box >   PointBoxes;


return( PointBoxes[ HashFunct( n, w ) ] );

class GoePointIndex
{
public:


  typedef vector< GeoLine::Rec >	GeoLineList;
  
  iterator	find( GeoPoint::Rec & point );

  iterator	south( iterator  it );

  iterator	north( iterator it );

  iterator	east( iterator it );

  iterator	west( iterator it );

  GeoLineList	grabLines( const GeoPoint::Rec & nw,
			   const GeoPoint::Rec & se );

  GeoLineList	grabLines( const GeoPoint::Rec &  center,
			   long			  radius );
  
};

bool
lineInBox( point nw, point se )
{
  long sdist = s - n;
  long edist = e - w;

  for( n = p.n ; n < s; n += .7mile )
    {
      for( w = p.w; w < e; e += .7 )
	{
	  put_in_box( n, w );
	}
    }
};

// *** I THINK THIS IS ALL THERE IS TO IT ***
bool
IsLineInBox( const GeoLine::Rec & line, const GoeBox::Rec & box )
{
  return( line.begin.x <= box.lowerRight.x
	  && line.end.x >= box.upperLeft.x
	  && line.begin.y <= box.lowerRight.y
	  && line.end.y >= box.upportLeft.y );
}


    
	  
// box 2,3 2,4 2,5  2,6 2,7 3,3, ..... 4,5 

// sending 3,5

//isPointInBox( point, 2:4, 2:5, 2:6, 3:4 );


// if each box contains linex from mutli countys i don't care

/*

  US Grid consist of boxes that are ~7 miles.

  we will KNOW the n,w,s,e for each box.

  each box only needs to store WHICH counties fall inside the box.

   ??? if a county boarder == a box border is it inside ???


   so you're dawing a map, you determing the US Boxes for the screen,

   then you get all the counies in all the US Boxes.

   Then go to each countey and get all the boxes that we would need.

   .... yes this would be fine ...
*/


struct UsaIndex
{
  GeoPoint::Rec		northWest;
  GeoPoint::Rec		southEast;
  
  MultiMemOffset::Loc	firstCounty
  MultiMemOffset::Loc	lastCountyCounty
};


struct UsaCountyList
{
  long	    coutyId;

  // next/prev
};


