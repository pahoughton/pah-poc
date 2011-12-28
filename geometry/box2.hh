

/*

  LineBox are .01 of a degree lat & lon (~.7 mile).
  
  BigBoxes are 1 of a degree lat & long ( ~ 70 miles).

  So, each big box would contain 100 LineBoxes.

  The All the data for a BigBox is stored in a SINGLE file.

  The Boundary data would tell us what country, state, county a line is in.

  If we were asked for a 'counties' data, we could use the 'boundary' to figure
  out which boxes to get data from.

*/


/* *** IsLineInBox IS WRONG its name should be IsBoxInBox */

/*

  Every line that is in more than one BigBox, will be stored in all the
  BigBox's files.

  This means if the Line's data changes, you have to find all the big boxes
  the line is in and change it everywhere.

*/

/* * * * * BIG IDEA a BigBox has 81 little box !!!!! */

/*

  All Positive lon formula (pos values don't change):  abs( 360 + lon ) % 360
  All Positive lat formula (north pole is 0):          abs( -90 + lat )  

  
    -126,49 = 360 - 126 = 234   abs( -90 + 49 ) = 41 so (23400.04100)

    abs( 36000 + lon ) % 36000


    
    -66,23
    

    -75.34.69

    -7512 3456
    
    - 7500 0000   3600 0000
    - 7500 9999   3600 9999

            .....
	    
    - 7508 9999   3608 9999

     7509 0000
     
     07500.03600
     07508.03608

     /00000.
     /00008.
     /00016.

     the big box dir name for a 'point' is:

     const long PointBoxDivisor( 10000 );
     
     FilePath bbDir;

     bbDir << prefix << '/'
           << (abs( 360000000 + lon ) % 360000000) / 9 * PointBoxDivisor
	   << '.'
           << (abs( -9000000 + lat ) ) /  9 * PointBoxDivisor
       ;
       

       line/00000.00000/PointIndex.rbt
       /00000.00000/PointList.mdl
       /00000.00000/BaseData.mdd
       /00000.00000/StreetName.mdd
       /00000.00000/LineData.mdd
       /00000.00000/StreetIndex.rbt

       linre type

       boundry/0.0/water/0.1.lb
       boundry/0.0/water/1.9.lb
       boundry/0.0/water/9.81.lb
       boundry/0.0/water/bigger.81.lb

       landmarks malls,parks,zoos
       city

       postal code, service area, msa

       fiber data...
       line data is to do with fiber it is addition information
       placed on a map, it has a starting point and ending point
       and a series of intermediate points. It it currently a series of lines
       there order is important. There is addition information about each line
       that uses the names of each site that the line is between. It is
       use to display fiber on a map and is used int the fiber locate routine.

       Point data( i.e.  paul"s palacial colorado retreat.
       by nature it would reside in a single little box.
       
       types.  POP's, regen sites, bell central offices, radio towers
               lit buildings. city on large scale maps.

	       
       
     /07516.03616/PointIndex.rbt /23516.03616/PointIndex.rbt
     /07516.03616/PointList.mdl
     /07516.03616/stuff
     
    BigBox # 1  fn = /.../00000.00000/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00001/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00002/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00003/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00004/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00005/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00006/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00007/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00008/PointIndex.rbt
    BigBox # 2  fn = /.../00000.0000/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00007/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00007/PointIndex.rbt
    BigBox # 2  fn = /.../00000.00007/PointIndex.rbt
    
    LAST BigBox fn = /USA/06000.02600/PointIndex.rbt

    LAST Big = /.../36000.18000/
*/

    
bool
IsLineInBox( GeoLine l, GeoBox b )
{
  long  xdist = abs( l.begin.x - l.end.x );
  long  ydist = abs( l.begin.y - l.end.y );

  if( l.begin.x < b.upperLeft.x
      {
	// line starts above box 
	if( l.end.x > b.upperLeft.x )
	  {
	    // starts above
	    // ends below top
	    if( l.begin.y < b.upperLeft.y )
	      {
		// starts above
		// ends below top
		// starts before left
		if( l.end.y > b.upportLeft.y )
		  {
		    // starts above
		    // ends below top
		    // starts before left
		    // ends to the right of left
		    
		    long xdiff = ( l.begin.x - b.upperLeft.x );

		    

  
  

