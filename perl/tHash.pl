eval 'exec perl -WS $0 ${1+"$@"}'
    if $running_under_some_shell;

$VersionTags{ cvs } = { "=VER_PROJECT="	=> " ",
			"=VER_ITEM="	=> "",
			"=VER_DESC="	=> "",
			"=VER_LAST_BY="	=> "\$Author$",
			"=VER_LAST_MOD="=> "\$Date$",
			"=VER_VERSION="	=> "\$Revision$",
			"=VER_STATUS="	=> "",
			"=VER_ID="	=> "\$Id$",
			"=VER_LOG="	=> "\$Log$
			"=VER_LOG="	=> "\Revision 1.1  2001/08/07 01:23:16  houghton
			"=VER_LOG="	=> "\*** empty log message ***
			"=VER_LOG="	=> "\"
		      };
$VersionTags{ dim } = { "=VER_PROJECT="	=> "%PP%",
			"=VER_ITEM="	=> "%PI% (%PF%)",
			"=VER_DESC="	=> "%PD%",
			"=VER_LAST_BY="	=> "%PO%",
			"=VER_LAST_MOD="=> "%PRT%",
			"=VER_VERSION="	=> "%PIV%",
			"=VER_STATUS="	=> "%PS%",
			"=VER_ID="	=> "%PID%",
			"=VER_LOG="	=> "%PL%"
		      };

foreach $tag (keys(%{$VersionTags{ cvs }})) {
  print "$tag\n";
}
