/*********************************************************************
 *
 * File:        tEbcdicChars.c
 * Project:	Test
 * Desc:
 *
 *  
 *
 * Notes:
 *
 * Author:	Paul Houghton 719-527-7834 - (paul.houghton@wcom.com)
 * Created:	04/03/03 02:20
 *
 * Revision History: (See end of file for Revision Log)
 *
 *  Last Mod By:    $Author$
 *  Last Mod:	    $Date$
 *  Version:	    $Revision$
 *
 *********************************************************************/

#include <Common.h>
#include <stdio.h>
#include <ctype.h>

unsigned char junk[] = { 'J','u','n','k' };

int main( int argc, char * argv[] )
{

  EbcdicToAscii( junk, 4 );

  {
    unsigned char c;
    for( c = 0; c < 129; ++ c ) {
      if( isprint( c ) ) {
	printf( "#define E_%c %04o /* '%c' - %d */\n", c, A2E( c ), c, c );
      }
    }
  }
  return( 0 );
}

/*
 *
 * Revision Log:
 *
 * $Log$
 * Revision 1.1  2008/04/24 16:51:50  Paul
 * *** empty log message ***
 *
 *
 */
