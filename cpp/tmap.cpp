
int
doit( void )
{

  struct Info
  {
    WcfContext  cid;
    Bitmask	mask;
  };
  
  map< Str, Info, less< Str > > masterList;

  // add mike
  masterList[ "Mike" ].cid  = cid1;
  masterList[ "Mike" ].mask = 0x08;
  
  // add frank
  masterList[ "Frank" ].cid = cid2;
  masterList[ "Frank" ].mask.set( 3 );
  
  // add George
  Info gi;
  
  gi.cid = cid3;
  gi.mask.set( 4 );
  
  masterList[ "George" ] = gi;

  WcfSend( masterList[ "George" ], mesg, len );

}
