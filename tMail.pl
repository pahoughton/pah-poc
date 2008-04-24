#
# File:		tMail.pl
# Project:	Test 
# Desc:
#
#   
#
# Notes:
#
# Author(s):   Paul Houghton 719-527-7834 paul.houghton@mci.com
# Created:     01/07/2004 09:07
#
# Revision Info: (See ChangeLog or cvs log for revision history)
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
use strict;
use warnings;

# use Mail::Send;
use Mail::Mailer;

package tMail;


my $mail = new Mail::Mailer 'smtp', Server => "pop.mcilink.com", Debug => 9;

$mail->open( { 'To' => 'rick.pogue@mci.com, paul.houghton@mci.com',
	      'Reply-To' => $ENV{ REPLYTO },
	      'Subject' => "test mail from Mail::Mailer" } );

print $mail  "This is a test message
 Useing porl - see ~houghton/prj/test/tMail.pl\n";

$mail->close();

print "Sent\n";


  
# my $msg = new Mail::Send;

# $msg->to("rick.pogue\@mci.com");
# $msg->subject("test w/ Mail::Send");
# $msg->add( "Reply-To:", $ENV{ REPLYTO } );
# $msg->cc( "paul.houghton\@mci.com" );

# my $body = $msg->open();

# print $body "This is a test message
# Useing porl - see ~houghton/prj/test/tMail.pl\n";

# $body->close();

# print "Sent\n";
