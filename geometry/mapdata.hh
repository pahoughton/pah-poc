
enum LineType
{
  L_STREET;
  L_RIVER;
  L_RAIL;
};

struct Point
{
  long	    x;
  long	    y;
};

struct Line
{
  Point	    begin;
  Point	    end;

  LineType  type;

  long	    addrLeftStart;
  long	    addrLeftStop;
  long	    zipLeft;

  long	    addrRightStart;
  long	    addrRightStop;
  long	    zipRight;

  long	    countyLeftId;
  long	    cityLeftId;
  
  long	    countyRightId;
  long	    cityRightId;
  
  off_t	    baseDataLoc;
  
  off_t	    next;
  off_t	    prev;
};


// first name in list would be primary name;

struct StreetName
{
  char	name[30];
  char	prefix[2];
  char  suffix[2];
  char  type[4];

  off_t	baseDataLoc;

  off_t	next;
  off_t	prev;
  
};

  
struct MapData
{

  off_t	    firstLineLoc;
  off_t	    lastLineLoc;

  off_t	    firstNameLoc;
  off_t	    lasyNameLoc;

  // other data ...

};

struct StreetSearch
{

  long	    addr;

  char	    name[30];
  char	    prefix[2];
  char	    suffix[2];
  char	    type[4];
  char	    city[2];

  char	    intersectName[30];
  char	    intersectPrefix[2];
  char	    intersectSuffix[2];
  char	    intersectType[2];
  // char	    intersectCity[2];

  long	    zip;
};


struct StreetIndexKey
{
  char	name[30];
  char	prefix[2];
  char  suffix[2];
  char  type[4];
  char	city[20];

  off_t	baseDataLoc;
};


struct PointIndex
{
  Point	    upperLeft;
  Point	    lowerRight;

  off_t	    pointListFirst;
  off_t	    pointListLast;
};

struct PointList
{
  off_t	    lineLoc;

  off_t	    next;
  off_t	    prev;
};

  

struct BoundryShape
{
  Point	    begin;
  Point	    end;

  off_t	    boundryDataLoc;

  off_t	    next;
  off_t	    prev;
};


struct BoundryData
{
  off_t	    firstLoc;
  off_t	    lastLoc;

  char	    name[];

  // ...
};

  
