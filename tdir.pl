#!/usr/local/bin/perl

opendir( DIR, $ARGV[0] );

while( ($d = readdir( DIR ) ) )
{
   print "$d\n";
}


