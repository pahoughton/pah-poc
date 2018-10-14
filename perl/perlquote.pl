#!/Tools/bin/perl

sub ShowAttributes {
    my $atts = $_[0];
    my $i = 1;
    while ($atts->[$i]) {
      my $aname = $atts->[$i++];
      my $value = _escapeLiteral($atts->[$i++]);
      print(" $aname=\"$value\"");
    }
  };

my $para = "
This is a test with nested tags
first a simple link: {tag:link url='The/Link'}Dest{/tag:link}
next is a nested bold link {tag:link url='The/Link'}{tag:b}Dest{/tag:b}{/tag:link}
next is a nested bold link {tag:link url='The/Link' nextattr='no'}{tag:b}Dest{/tag:b}{/tag:link}
The END
";

sub parseTags {
  my ($para) = @_;

  if( $para =~
      s{(.*?)\{\s*tag:(\w+)([^\}]+)*\}} {
	my $text = $1;
	my $tag = $2;
	my $attr = $3;
	my %attrs;
	print "$text";
	print "\n<$tag";
	$attr =~ s{\s*(\w+)=\'(([^\']|\\\')+)}{
	  $attrs{ $1 } = $2;
	}eg;
	foreach $a (keys(%attrs)) {
	  print " $a='$attrs{ $a }'";
	}
	print ">\n";
	"";
      }es ) {

    if( $para =~ /\{(\/?)tag/m ) {
      if( ! $1 ) {
	# print "CALLING: ", index( $para, "{tag" ),
	# " < ", index( $para, "{/tag" ),"\n$para\n****\n";
	#print "\nNESTCALL:\n";
	$para = parseTags($para);
      }
    }
    if( $para =~ s{(.*?)\{/tag:(\w+)\}} {
      print "  $1\n</$2>\n";
      "";
    }e < 1 ) {
      die "End Tag not found in:\n$para\n";
    }
  }

  #print "PARA:$para\n";
  if( $para =~ /\{(\/?)tag/m ) {
    if( $1 ) {
      return( $para );
    } else {
      #print "\nCALL\n";
      return( parseTags( $para ) );
    }
  }
  return( $para );
}


print "REST:\n",parseTags( $para );


  
