use Sys::Hostname;
use Socket;
my($addr)=inet_ntoa((gethostbyname(hostname))[4]);
print "$addr\n";
