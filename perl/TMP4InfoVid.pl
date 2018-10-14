use MP4::Info;
use Data::Dumper;

my $fn;
$fn = "/Volumes/Drobo/Media/Video/Movies/DVD/2.40-1/Absolute.Power.(1997).mp4";
$fn = "/Volumes/Drobo/Media/Video/TV/DVD/4-3/Ducktales.S01E27.(1987).mp4";
my $tag = get_mp4tag($fn);
my $info = get_mp4info($fn);

$tag->{ COVR } = "";
$info->{ COVR } = "";

print "TAG: ".Dumper($tag),"\n";
print "INFO: ".Dumper($info),"\n";
