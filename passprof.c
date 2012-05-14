int main( int ac, char ** av ) {
  unsigned char n = 0;
  unsigned char y = 0;
  unsigned char w = 0;
  unsigned char v[16];
  printf( "HI\n" );
  memset( v, 0, sizeof( v ) );
  for( ; n < 8; n ++ ) {
    for( y = 0; y <= n; y++ ) {
      for( w = ' '; w < '~'; ++ w ) {
	if( w != 0 ) {
	  v[y] = w;
	  puts( v ); putc( '\n' );
	  
	}
      }
    }
  }
  printf( "%d\n",'~' - ' ' );
}
