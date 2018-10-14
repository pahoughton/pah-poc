#!/export/home/houghton/prj/Support/bin/perl
#
# File:         tPerlArrays.pl
# Project:	Test (%PP%)
# Item:   	%PI% (%PF%)
# Desc:
#
#   
#
# Notes:
#
# Author:	Paul Houghton - <paul.houghton@wcom.com>
# Created:	02/24/01 07:07
#
# Revision History: (See end of file for Revision Log)
#
#   Last Mod By:    %PO%
#   Last Mod:	    %PRT%
#   Version:	    %PIV%
#   Status:	    %PS%
#
#   %PID%
#

eval 'exec perl $0 ${1+"$@"}'
    if 0 ;

@Options =
  (
   [ "help",	"+",	"",	    "Output usage information.",
			"The amount of information increases each"
			." time it appears on the command line."
			." The first instance just outputs the available"
			." command line arguments. Suscessive instances"
			." (i.e. -help -help -help) provide additional"
			." information upto 4 which output the entire"
			." program documentation." ],
   [ "man",	"",	"",	    "Output the entire program documentation.",
			"This is just a short cut for using -help 4 times" ]
  );

print "$Options[1][4]\n";

foreach $o (@Options) {
  print "$$o[0]\n";
}

#
# Revision Log:
#
# %PL%
#

# Set XEmacs mode
#
# Local Variables:
# mode:perl
# End:
