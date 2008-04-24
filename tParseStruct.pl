#
# File:		parseStruct.pl
# Project:	Trs 
# Desc:
#
#   
#
# Notes:
#
# Author(s):   Paul Houghton 719-527-7834 <paul.houghton@mci.com>
# Created:     06/11/2003 20:49
#
# Revision History: (See end of file for Revision Log)
#
#	$Author$
#	$Date$
#	$Name$
#	$Revision$
#	$State$
#
# $Id$
#



eval 'exec perl -W $0 ${1+"$@"}'
    if 0 ;
#use strict;
#use warnings;

package parseStruct;

our @fnd;

while( <> ) {
  if( /^\s+([\w\s]+\w)\s+([A-Za-z_][0-9A-Za-z_]*)\s*(\[\s*(\d+)\s*\])?\s*;(.*)/ ) {
    if( $2 ) {
      push( @fnd, $1, $2, $3, $4, $5 );
      print "'",join( "' '", @fnd ),"'\n";
    }
  }
  @fnd = ();
}
