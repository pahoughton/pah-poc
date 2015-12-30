#!/usr/bin/perl
# 2015-07-09 (cc) <paul4hough@gmail.com>
#

eval 'exec perl -w -S $0 ${1+"$@"}'
    if 0 ;

use warnings;
use strict;
use Data::Dumper;
use JSON;

my $leases = "";
{
  local $/=undef;
  open( my $fh,"<","/var/lib/libvirt/dnsmasq/virbr0.status")
      || die "Couldn't open virbr0.status: $!";
  $leases = <$fh>;
  close $fh;
}

my $jsondata = from_json( $leases );

#print Dumper($jsondata);
foreach my $ent (@$jsondata) {
    print join(' ',
	       $ent->{'mac-address'},
	       $ent->{'hostname'},
	       $ent->{'ip-address'}),"\n";
}


#use DBI;
#use DBD::Pg qw(:pg_types);
#use File::Basename;
#use File::Find;
#use MP4::File;
#use Meta::TMDb;
#use Meta::IMDB;
#use Term::ReadLine;

#use POSIX;
#use Text::CSV;
#use DVD::Read;
#use Encode;
#use LWP;
#use MP4::Info;
#use XML::Parser;
#use Imager;

#my $dbh = DBI->connect('dsn','user','pass',
#                       { RaiseError => 1, AutoCommit => 0 } );
#


## Local Variables:
## mode:perl
## end:
