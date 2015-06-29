#!/usr/bin/perl
use strict;
use warnings;

our $Doc = "
This code is from: Gitolite::Conf.pm

It does not seem to work when GIT_CONFIG_KEYS is a value of
   GIT_CONFIG_KEYS => 'gitolite\.url jenkins\.url',

First test - just including print statements
";

our %rc;
$rc{GIT_CONFIG_KEYS} = 'gitolite\.url jenkins\.url';
#$rc{GIT_CONFIG_KEYS} = '(jenkins|gitolite).url';

my @klist = ('gitolite.url','jenkins.url');

foreach my $key (@klist) {
  print $key,"\n";
  my @validkeys = split( ' ', ( $rc{GIT_CONFIG_KEYS} || '' ) );
  push @validkeys, "gitolite-options\\..*";
  print join("~",@validkeys),"\n";
  my @matched = grep { $key =~ /^$_$/ } @validkeys;
  print "git config '$key' not allowed\ncheck GIT_CONFIG_KEYS in the rc file" if ( @matched < 1 );
}

