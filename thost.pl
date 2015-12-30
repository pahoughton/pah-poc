#!/usr/bin/perl
# 2015-07-09 (cc) <paul4hough@gmail.com>
#

use Socket;
$packed_ip = gethostbyname("snow");
if (defined $packed_ip) {
    $ip_address = inet_ntoa($packed_ip);
}
print "$ip_address\n";

my $gethostent;
