this is a test
Path: bloom-beacon.mit.edu!grapevine.lcs.mit.edu!uhog.mit.edu!europa.eng.gtefsd.com!MathWorks.Com!yeshua.marcam.com!zip.eecs.umich.edu!newsxfer.itd.umich.edu!uunet!newsserver.amsinc.com!162.70.244.20!jwarring
From: jwarring@flaixy.amsinc.com (Jeff Warrington)
Newsgroups: comp.unix.aix,comp.answers,news.answers
Subject: AIX Frequently Asked Questions (Part 1 of 3)
Supersedes: <3030@flAIXy.fd.amsinc.com>
Followup-To: comp.unix.aix
Date: 12 Aug 1994 21:12:47 GMT
Organization: American Management Systems, Inc.
Lines: 1966
Approved: news-answers-request@MIT.EDU
Distribution: world
Expires: 30 Sep 94 01:23:45 GMT
Message-ID: <3040@flAIXy.fd.amsinc.com>
Reply-To: jwarring@flAIXy.fd.amsinc.com
NNTP-Posting-Host: flaixy.fd.amsinc.com
Summary: This posting contains a list of Frequently Asked Questions 
         and their answers about AIX, IBM's version of Unix.
Keywords: AIX RS/6000 questions answers
Xref: bloom-beacon.mit.edu comp.unix.aix:30380 comp.answers:6740 news.answers:23912

Archive-name: aix-faq/part1
Last-modified: Aug 12, 1994
Version: 3.40

Well, I really should make a deep thoughtful comment about the release
of AIX 4.1, but I think it's received enough attention at least in our
little news group :)


Frequently Asked Questions to AIX 3.x and IBM RS/6000
_____________________________________________________

This posting contains frequently asked questions and answers about the
IBM RS/6000 series workstations and AIX version 3. All input is very
welcome, I can be reached at jwarring@flAIXy.fd.amsinc.com

The list is split into three articles to pass thru most mailers. I'll
usually try to post them once a month to comp.unix.aix, news.answers,
and comp.answers. Please let your input continue as I am most thankful
for all of it.

If you see a From: line it means that whatever follows is either an
unabridged or slightly edited version of the input I have received, and
that I may not have verified its contents. If there is no From: line, I
probably know what I am talking about, and the entry is edited from
various sources.

All entries are numbered with major and minor subject number, e.g. 
2.11. If the subject is preceded by an asterisk, that entry has been
changed or added since the last posting.

The comp.unix.aix group is for AIX on all IBM platforms -- RT, PS/2,
370, RS/6000 and mainframes (ESA based on OSF/1), but the traffic has
evolved to discuss predominantly AIX 3.x and the RS/6000. The
newsgroups comp.sys.ibm.pc.rt and comp.sys.ibm.ps2.hardware cover the
RT, mostly hardware and AOS 4.3, and on PS/2 hardware respectively. 
Mark Whetzel posts FAQ lists about RTs in the rt and *.answers groups.
There are few to non-existent discussions on AIX/370 and AIX/ESA.

This article covers only AIX 3.x and the RS/6000, except when noted.

If you post questions to comp.unix.aix, please be sure to indicate:

- the machine type and brief configuration, e.g. Model 540, 64 MB RAM,
  48 MB swap space (this is actually bad), 1.2 GB XYZ hard drive, etc.
  Note: There are now three classes of RS/6000s - the original, RS or
  POWER, RS/2 or POWER2, and PowerPC.

- the exact AIX version number, i.e. AIX 3.1 is NOT sufficient, whereas
  AIX 3.1.5 or AIX 3.1 with the 3005 update is. With 3.2 you should
  mention any significant ptfs using the U4xxxxx numbers.

I am doing this on my own time. Please do not ask me questions that
should be asked to IBM. If you suspect you have software defect problems
call (800) 237-5511. If you have hardware problems call (800) IBM-SERV.
______________________________________________________________________________

Table of contents:

1.0    General concepts
1.000  The AIX operating system - what is it?
1.001  I know neither Unix nor AIX - where do I find more information?
1.002  What is the Object Database?
1.003  How do I get rid of the verbose error messages?
1.004  Which release of AIX do I have?

1.1    SMIT, system administration, file systems
1.100  I am used to Unix systems programming, why should I learn SMIT?
1.101  How do I turn off the "running man" in smit?
1.102  How do I import an /etc/passwd or /etc/group file from another box?
1.103  Cleaning up utmp, who, and accounting problems
1.104  How to fsck the root filesystem
1.105  How can I unmount /usr to run fsck on it?
1.106  How do I shrink /usr?
1.107  How do I make a filesystem larger than 2 Gig?
1.108  How do I see/change system parameters like number of processes per user?
1.109  How do I shrink the default paging space on hd6?
1.110  The swapper seems to use enormous amounts of paging space, why?
1.111  How much paging space do I need?
1.112  How do I mount a floppy disk as a filesystem?
1.113  How do I remove a committed lpp?
1.114  How can I recover space after installing updates?
1.115  Where are the AIX log files kept?
1.116  How can I log information about ftp accesses to a file?
1.117  How do I find a file name from the inode number?
1.118  How do I set up postscript accounting?
1.119  How do I create boot diskettes for 3.2?
1.120  Where can I find tools for performance monitoring?
1.121  How can I tell what virtual printer a print queue is using?
1.122  Two srcmstr's are less useful than one?
1.123  How do I set the tty name associated with a physical port?
1.124  How do I use mksysb to clone a system?
1.125  How do I retain timestamps with mksysb?
1.126  How can I find out the machine type?
1.127  Updating to 3.2.5
1.128  AIX fix strategy
1.129  Are passwords limited to 8 char?
1.130  How do I increase the number of ptys > 64?
1.131  CERT advisories on sendmail and xterm
1.132  How do I remove a non-existant physical volume?

1.2    Backups, tape
1.200  Some info about tape backups
1.201  How do I do remote backup?
1.202  How do I backup a multi-disk volume group?
1.203  How do I put multiple backups on a single 8mm tape?
1.204  How can I make an exact duplicate of a tape over the network?
1.205  What is tape block size of 0?
1.206  Resetting a hung tape drive...
1.207  How do I read a mksysb tape with tar?
1.208+ How do I read a 5Gbyte tape on a 2Gbyte drive?

1.3    Memory and process management
1.300  Some info about the memory management system
1.301  How much should I trust the ps memory reports?

1.4    Shells, commands, man pages, InfoExplorer
1.400  How do I make an informative prompt in the shell?
1.401  How do I set up ksh for emacs mode command line editing?
1.402  Listing files with ls causes a core dump
1.403  How do I put my own text into InfoExplorer?
1.404  InfoExplorer ASCII key bindings 
1.405  How can I add new man pages to the system?
1.406+ Why can't I read man pages?  Where is nroff?

1.5    Video, Graphics, X11
1.500  Which release of X11 do I have?
1.501  How to prevent ctrl-alt-backspace from killing the X session
1.502  Who has a termcap/terminfo source for aixterm or the HFT console?
1.503  How can I look at PostScript files?  Why is "dpsexec" so lousy?
1.504  unix:0 vs `hostname`:0
1.505  VT100 key bindings for aixterm
1.506  Is there a screen saver that does not use excessive CPU?
1.507  Where are the colors, availible for an X session, listed.

1.6    Networks and communications
1.600  My named dies frequently, why?
1.601  How do I trace ethernet packets on an AIX system?
1.602  What is the authorized way of starting automount at boot time?
1.603  How do I set a tty port for both dial-in and dial-out?
1.604  How to move or copy whole directory trees across a network
1.605  How can I send mail to hosts that cannot be pinged?
1.606  How to configure dialup SLIP
1.607  Where is DCE discussed?
1.608  How do I make /var/spool/mail mountable?
1.609  getty spawning too rapidly
1.610  Does AIX support Compressed SLIP (CSLIP)?
1.611  How do I setup anonymous ftp on my AIX system?

1.7
1.8

1.9    Miscellaneous
1.900  SCSI-1 and SCSI-2 "interoperability" got you confused?
1.901  How to get your keyboard back after unplugging it from the 6000
1.902  How do I set up pcsim, the DOS emulator?
1.903  How do I transfer files between AIX and DOS disks?


2.00  C/C++
2.01  I cannot make alloca work
2.02  How do I compile my BSD programs?
2.03  Isn't the linker different from what I am used to?
2.04  How do I link my program with a non-shared /lib/libc.a?
2.05  How do I make my own shared library?
2.06  Linking my program fails with strange error, why?
2.07  What's with malloc()?
2.08  Why does xlc complain about 'extern char *strcpy()'
2.09  Why do I get 'Parameter list cannot contain fewer ....'
2.10  Why does xlc complain about '(sometype *)somepointer = something'
2.11  Some more common errors
2.12  Can the compiler generate assembler code?
2.13  Curses
2.14  How do I speed up linking?
2.15  What is deadbeef?
2.16  How do I statically link in 3.2?
2.17  How do I make an export list from a library archive?
2.18  imake, makedepend 
2.19  How can tell what shared libraries a binary is linked with?

3.00  Fortran and other compilers
3.01  I have problems mixing Fortran and C code, why?
3.02  How do I statically bind Fortran libraries and dynamically bind
      C libraries?
3.03  How do I check if a number is NaN?
3.04  Some info sources on IEEE floating point

4.00  GNU and Public Domain software
4.01  How do I find PD software?
4.02  Are there any ftp sites?
4.03  General hints
4.04  GNU Emacs
4.05  gcc/gdb
4.06  GNU Ghostscript
4.07  TeX
4.08  Perl
4.09  X-Windows
4.10  bash
4.11  Elm
4.12  Oberon 2.2
4.13  Kermit
4.14  Gnu dbm
4.15  tcsh
4.16  Kyoto Common Lisp
4.17  Tcl/Tk
4.18  Expect
4.19  Public domain software on CD
4.20  Andrew Toolkit
4.21  sudo
4.22  Flexfax and other fax software
4.23  lsof
4.24  popper
4.26  mpeg link errors version 2.0

5.00  Third party products
5.02  Disk/Tape/SCSI
5.03  Memory
5.04  Others
5.05  C++ compilers
5.06  Memory leak detectors
5.07  PPP
5.08  Graphics adapters.

6.00  Miscellaneous other stuff
6.01  Can I get support by e-mail?
6.02  List of useful faxes
6.03  IBM's ftp, gopher and WWW presence
6.04  Some RS232 hints
6.05  What publications are available for AIX and RS/6000?
6.06  Some acronyms
6.07  How do I get this by mailserver or ftp?
6.08  Hypertext version of the FAQ
6.09  Where can I send suggestions for tools?
6.10  comp.unix.aix archive availible on the WWW

7.00  Contributors

______________________________________________________________________________
1.000: The AIX operating system - what is it?

This is best answered by reading the text files in /usr/lpp/bos. The
README file there contains general information and the BSD files contain
useful information if you know BSD and/or System V.

The last release for the RT PC is 2.2.1. The latest release for PS/2s
and Intel architecture machines is AIX 1.3; for PS/2s only, 1.2.1. For
the RS/6000, there are two major levels, 3.1 and 3.2, and various
intermediate levels. IBM has dropped support for 3.1.


1.001: I know neither Unix nor AIX - where do I find more information?

If you are new to Unix, you should look at the other newsgroups in the
comp.unix hierarchy, in particular comp.unix.questions (for basic
questions) or comp.unix.wizards (for difficult questions). These two
groups have a common FAQ posting as well.

If you need information about C programming, try comp.lang.c or
comp.std.c, the latter for Standard ANSI C issues.  comp.lang.c has a
FAQ posting.


1.002: What is the Object Database?
From: Uwe Geuder <Uwe.Geuder@informatik.uni-stuttgart.de>

AIX stores most of the system management information in /etc/objrepos,
/usr/lib/objrepos, and /usr/share/lib/objrepos. Files (also referred to
as system object classes) in these directories are adminstered by the
Object Database Manager, ODM, which is a set of library routines and
programs providing basic object oriented database facilities.

Under most circumstances, only SMIT or the commands SMIT call (see
1.100) should be used to change the contents of the system object
classes. A harmless way to look at the object database is to use odmget
<Class> where <Class> is one of the files in /etc/objrepos.

Experienced users can use the ODM editor, odme, to navigate the database
in detail. Modifying the database should only be attempted if you know
exactly what you are doing.
 

1.003: How do I get rid of the verbose error messages?
Corrected by Bjorn P. Brox <brox@corena.n>

Many of the messages from the Unix commands are available in different
languages. This is controlled by the LANG environment variable, the
default being En_US meaning English in the US. All the default messages
have a message number associated with them, e.g.:

$ cat no-such-file
cat: 0652-050 Cannot open no-such-file.

If you prefer the terser Unix-looking error message, set your
environment variable LC_MESSAGES to C, and you will get:

$ cat no-such-file
cat: Cannot open no-such-file.

By default LC_MESSAGES is the same as your environment LANG.  Setting
LANG does also work, but should be avoided since it changes
app-defaults lookup etc.  See locale(): LC_ALL


1.004: Which release of AIX or other products do I have?

New with 3.2.5: The oslevel command shows OS and component levels.
Run oslevel -help to see options

The command 'lslpp -h bos.obj' will show all lines referring to the BOS, 
Basic Operating System.  E.g.:

Fix Id  Release         Status    Action     Date       Time     User Name
------- --------------- --------- ---------- ---------- -------- ---------
Path: /usr/lib/objrepos
bos.obj
        03.02.0000.0000 COMPLETE  COMMIT     12/31/69   18:00:00 root
U401864 03.02.0000.0000 COMPLETE  COMMIT     11/12/92   20:09:35 root
U401968 03.02.0000.0000 COMPLETE  COMMIT     11/12/92   23:18:21 root
U401969 03.02.0000.0000 COMPLETE  COMMIT     11/12/92   23:18:20 root
                 ..........................
U418349 03.02.0000.0000 COMPLETE  COMMIT     08/28/93   15:34:13 root
U419950 03.02.0000.0000 COMPLETE  COMMIT     08/28/93   15:34:11 root

For AIX 3.2, you may come across discussions on 3.2.0, 3.2.1, 3.2.2,
3.2.3 extended, 3.2.4 and 3.2.5.  There is no absolute way to tell which
of these you are running since the newer releases are simply 3.2.0 with
some sets of PTFs added. See above example listing. These selective
fixes could mean there are literally thousands of slightly different
variations of 3.2 in use. Please see section 6 to request some useful
faxes to help with this number game.

AIX 3.2.4 and later attempts to resolve this confusion. The OS is
broken down into subsystems so that updates can be applied to an entire
subsystem.  lslpp also sports a new option; use 'lslpp -m bos.obj' to
show what level and update the system is running. You can also use the
new oslevel command. Unless you have a pressing need (such as
applications unsupported on > 3.2.3), it is recommended that you update
to this level. Also see 1.128.

______________________________________________________________________________
1.100: I am used to Unix systems programming, why should I learn SMIT?

Using SMIT is probably very different from your normal way of doing
system administration, but could prove very useful in the long run. In
some areas, in particular TCP/IP, NFS, etc., you can also do things the
normal way, but it is unfortunately difficult to know exactly when the
normal way works. Again, always using SMIT is probably your best way
to go, even when you have to learn a new tool. 

What SMIT actually does is build up commands with all required options
to perform the functions requested and execute them. The commands
called and the output they produce are stored in the files smit.script
and smit.log in your home directory. Looking in smit.script may teach
you more about system administration.


1.101: How do I turn off the "running man" in smit?

Use smitty, the standard curses version or add this line to your .kshrc file:
alias smit="smit -C"


1.102: How do I import an /etc/passwd or /etc/group file from another box?

Make sure that you run usrck, pwdck (/etc/passwd), and grpck
(/etc/group) to let AIX work its password/group magic.


1.103: Cleaning up utmp, who, and accounting problems
From: fritz@scipp.UCSC.EDU (Frederick Staats)

This applies if you are running an X11R5 xterm on 3.2.
Add this to the top of X11R5 mit/clients/xterm/main.c:

#ifdef AIXV3
#define USE_SYSV_UTMP
#define HAS_UTMP_UT_HOST
#define WTMP_FILENAME "/var/adm/wtmp"
#endif

And your utmp problems should go away. If you want xterminal sessions
to go into the wtmp file you need to define -DWTMP in the Imakefile and
be sure the WTMP_FILENAME is set to the right place.

The following program by jfh@rpp386.cactus.org (John F. Haugh)
if run in the background by root will clean up the utmp file.

#include <sys/types.h>
#include <utmp.h>
#include <fcntl.h>

main ()
{
	int	fd;
	struct	utmp	utmp;

	while (1) {
		if ((fd = open ("/etc/utmp", O_RDWR)) < 0)
			exit (1);

		while (read (fd, &utmp, sizeof utmp) == sizeof utmp) {
			if (utmp.ut_type == USER_PROCESS &&
					kill (utmp.ut_pid, 0) != 0) {
				lseek (fd, - (long) sizeof utmp, 1);
				utmp.ut_type = DEAD_PROCESS;
				write (fd, &utmp, sizeof utmp);
			}
		}
		close (fd);
		sleep (60);
	}
}

Another utmp program was posted to comp.sources.unix, volume 25, issue
96 by David W. Sanderson (dws@cs.wisc.edu) that also works on AIX 3.1.


1.104: How to fsck the root filesystem

You can run fsck either in maintenance mode or on mounted filesystems.
Try this:

  1. boot from diskette
  2. select maintenance mode
  3. type /etc/continue hdisk0 exit (replace hdisk0 with boot disk if
     not hdisk0)
  4. fsck /dev/hd4


1.105: How can I unmount /usr to run fsck on it?
From: accapadi@mathew.austin.ibm.com (Matt Accapadi)
[ This is for 3.2. ]

In order to fsck /usr, it has to be unmounted. But /usr cannot be
unmounted because /bin is symbolically linked to /usr/bin. Also
/etc/fsck is symbolically linked to /usr/sbin/fsck.

To work around this, when you boot from the boot/maintenance diskettes
and enter maintenance mode, enter "getrootfs hdisk0 sh" instead of
"getrootfs hdisk0" where hdisk0 is the name of the boot disk. Then run
"fsck /dev/hd2".


1.106: How do I shrink /usr?
From: mike@bria.UUCP (Michael Stefanik) and Richard Hasting

FOR AIX 3.1
-----------

 1) Make a backup of /usr

        find /usr -print | backup -ivf /dev/rmt0 (or appropriate device)

 2) shutdown to maintenance mode

        shutdown -Fm
 
 3) export LANG=C
 
 4) remove the filesystem and the logical volume
    ignore an error about the "dspmsg" command not found

        umount /usr
        rmfs /usr

 5) make a new logical volume hd2 and place it on rootvg with desired size

        mklv -yhd2 -a'e' rootvg NNN 

   where NNN is the number of 4 meg partitions

 6) create a filesystem on /dev/hd2

        crfs -vjfs -dhd2 -m'/usr' -Ayes -p'rw'

 7) mount the new /usr filesystem and check it

        /etc/mount /usr
        df -v

 8) restore from the tape; system won't reboot otherwise

        restore -xvf/dev/rmt0

 9) Sync and reboot the system; you now have a smaller /usr filesystem

FOR AIX 3.2
-----------

 0)  Experiances posted to comp.unix.aix lead me to suggest that
     many administrators find the following piece of information 
     useful after completing this procedure.  I thought some of you
     might like to read it BEFORE getting yourself into this
     predicament.  

     Call 1-800-IBM-4FAX and request document 2503 dated 1/26/94.  
     Title is "How to recover if all files are owned by root after
     restoration from a mksysb tape".

 1) Remove any unneeded files from /usr.

 2) Make sure all filesystems in the root volume group are mounted. If
    not, they will not be included in the re-installed system.

 3) Type mkszfile. This will create /.fs.size that contains a list of
    the active filesystems in the root volume group that will be
    included in the installation procedure.

 4) Edit .fs.size. Change the size of /usr to what you want.

    Example: This .fs.size file shows /usr to be 40MB.

	rootvg 4 hd2 /usr 10 40 jfs

    The 10 is the number of physical partitions for the filesystem and
    the 40 is 40 MB. Most systems have a physical partition size of 4 MB.
    Therefore, the second number (40) will always be 4 times the
    previous number (10). Note, however, that a model 320 with a 120 MB
    drive will have a physical partition size of only 2 MB, and the
    total MB is twice the number of physical partitions. The first
    number (4) in the .fs.size file represents the PP size.

    If you want to reduce the size of /usr from 40 MB to 32 MB, edit the
    /usr entry to:

        rootvg 4 hd2 /usr 8 32 jfs

    IMPORTANT: Make sure that you DO NOT enter a value which is less
    than the size of the filesystem required to contain the current
    data. Doing so will cause the re-installation procedure to fail.

 5) chdev -l rmt0 -a block=512 -T

 6) Unmount all filesystems that are NOT in the root volume group.
 
 7) Varyoff all user-defined volume groups, if any

        varyoffvg VGname

 8) Export the user-defined volume groups, if any

        exportvg VGname

 9) With a tape in the tape drive, type

        mksysb /dev/rmt0

     This will do a complete system backup, which will include
     information (in the .fs.size file) for the installation procedure
     on how large the filesystems are to be created.

 10) Follow the instructions in the Installation Kit under "How to
     Install and perform maintenance from Diskettes" (reportedly now 
     called "BOS Installation from a System Backup") using the
     diskettes and tape that you created in the previous steps.

     [ pre AIX 325: DO NOT select the option "Reinstall AIX with
     Current System Settings". Instead use "Install AIX with Current
     System Settings" for the logical volume size changes to take affect. ]

     [ w/ AIX 325: Select "Install from a mksysb image" ]

 11) When the installation is complete, you may then import any
     user-defined volume groups.

         importvg -y VGname PVname

     where "VGname" is the name of the volume group, and "PVname" is
     the name of any one of the physical volumes in the volume group.

 12) Varyon your user-defined volume groups

         varyonvg VGname

 The reduction of the filesystems is now complete.


1.107: How do I make a filesystem larger than 2 Gig?

The largest filesystem under AIX is 2 Gigabytes because the largest
signed integer is 2**31 - 1.  This means that AIX 3.2.5 an versions
preceeding it are limited to 2Gb filesystems.  This obviously does not
include "non-filesystems"

It was previously noted here that AIX would support >2Gb filesystems
after realease 3.2.5.  The current working phrase is that >2Gb
filesystems are not and will not be availible in 3.x.x.  It is
possible that IBM will eventually support >2Gb at some un-determined
time in the future.


1.108: How do I see/change system parameters like number of processes
       per user?

You can use SMIT as described below or simply use lsattr/chdev.
The former will list the current setting as in:

  # lsattr -E -l sys0 -a maxuproc
  maxuproc 40 Maximum # of processes allowed per user True

and you can then increase the maxuproc parameter:

  # chdev -l sys0 -a maxuproc=200
  sys0 changed

If you just type 'lsattr -E -l sys0' you will get a list of all
parameters, some of which can be changed but not others.

If you want to use smit, do as follows:

smit
  System Environments and Processes
    Change / Show Operating System Parameters
      - on this screen you can change by overtyping the following fields:
        - Maximum number of PROCESSES allowed per user
        - Maximum number of pages in block I/O BUFFER CACHE
        - Maximum Kbytes of real memory allowed for MBUFS
      - toggle fields exist for:
        - Automatically REBOOT system after a crash  (false/true)
        - Continuously maintain DISK I/O history (true/false)


1.109: How do I shrink the default paging space on hd6?

1) create a paging space to use temporarily
   mkps -s 20 -a rootvg

2) change default paging space hd6 so it is not used at next reboot
   chps -a n hd6

3) For AIX 3.1, edit /etc/rc.boot4 and change swapon /dev/hd6;
   for AIX 3.2, edit /sbin/rc.boot and change swapon /dev/hd6
   swapon /dev/paging00

4) Update information in boot logical volume
   bosboot -a             (3.1)
   bosboot -a -d hdisk0   (3.2)

5) shutdown and reboot

6) remove current hd6 and create a new one of smaller size
   rmps hd6
   mklv -y hd6 -t paging rootvg <size of PS in 4 Meg blocks>

7) Re-edit /etc/rc.boot4 (3.1), /sbin/rc.boot (3.2) to swap to /dev/hd6
   swapon /dev/hd6

8) Update information in boot logical volume
   bosboot -a             (3.1)
   bosboot -a -d hdisk0   (3.2)

9) change current paging device (paging00) so it is inactive at next boot
v   chps -a n /dev/paging00

10) shutdown, reboot, remove paging00 using the command:
    rmps paging00

You can check your paging space with `lsps -a`

1.110: The swapper seems to use enormous amounts of paging space, why?

When you run ps, you may see a line like:

USER   PID %CPU %MEM    SZ   RSS     TT STAT  TIME CMD
root     0 0.0%  14% 386528  8688      -    S 17:06 swapper

This is normal behavior, the swapper looks to ps like it has the entire
paging space plus real memory allocated.


1.111: How much paging space do I need?

See answer 2 in question 1.300.


1.112: How do I mount a floppy disk as a filesystem?
From: op@holmes.acc.Virginia.EDU (Olaf Pors)

You can build a filesystem on a floppy and mount it, however the
filesystem will be read only. The reason that the filesystem will be
read only is because AIX Version 3.1.5 cannot create a journal log on a
diskette. The intended use is for temporary access to read only data. 
The diskette file system must be unmounted after use and during system
backup procedures or errors could occur.

To make the read only filesystem on a floppy:

1. Make a subdirectory on an existing filesystem and place all of the
   files that the diskette will contain into this subdirectory.

2. Enter the following command to create a prototype file containing
   information about the new filesystem, in the example /dir_struct
   is the pathname of the subdirectory created in step 1, and
   proto_filename is the name of the prototype file to be created.

         proto /dir_struct > proto_filename

3. Place a formatted floppy into the drive.

4. Edit the prototype file and replace the first line with the following:

         <noboot> 0 0

5. Enter the following command to make the filesystem on your floppy:

          mkfs -p proto_filename -V jfs /dev/fd0

6. Create the directory upon which you will mount the floppy based
   filesystem, or you can use /mnt. Mount the filesystem:

          mount -r -V jfs /dev/fd0 /your_mount_point

7. To unmount the filesystem:

          umount /dev/fd0

Since the filesystem is read-only it may be of limited use but if you
are going to use it for utility programs and other data that does not
change much, it may still be useful. If you need to change the data,
you can copy the directory from the floppy into another directory, make
your modifications, and remake the filesystem using this procedure.


1.113: How do I remove a committed lpp?
From: drb@chmeds.ac.nz (Ross Boswell)

This seems to be a common problem. The following script for 3.2 only is
>from IBM NZ AIX software support. As far as I know, it works -- I used
it to remove unwanted fonts. I have no official permission to post it
-- use it at your own risk!

#!/bin/ksh
#
# Permanently remove a product from disk and AIX databases
#

if [ `whoami` != "root" ] ; then
  echo You must be root to run this script.
  exit 1
fi

if [ `uname -a | awk '{print $1$4$3}'` != "AIX32" ] ; then
  echo This script only works on AIX 3.2.
  exit 1
fi

TMP_FREE=`df /tmp | awk '$3 ~ /[0-9]/{print $3}'`
if [ "$TMP_FREE" -lt 1000 ] ; then
   echo There is not enough room in your /tmp directory.
   echo You need 1000 KB free, and you have only $TMP_FREE KB free.
   echo Either remove some stuff from /tmp, or use chfs to make it bigger.
   exit 1
fi

ODMDIRS="/etc/objrepos /usr/lib/objrepos /usr/share/lib/objrepos"
ODMDIR=/usr/lib/objrepos
export ODMDIR

if [ $# -lt 1 ]
then
  echo usage: $0 lppname [lppname ...]
  echo lppname is a string compatible with grep, ie "X11" or "PHIGS"
  echo typing   $0 PHIGS   will remove all LPPs with PHIGS in their name.
  exit 1
fi

NAMES=$1
shift
while [ $# -gt 0 ] ; do
  NAMES="$NAMES|$1"
  shift
done
echo "Searching for lpps with egrep \"$NAMES\"...\c"

for ODMDIR in $ODMDIRS ; do
  if [ ! -d $ODMDIR -o ! -w $ODMDIR ] ; then
     echo $ODMDIR is not writeable or is not a directory.
     echo I hope this is because you are a /usr client or diskless.
     echo If you are not a diskless or a /usr client, you should stop.
     echo "Enter y to continue ->\c"
     read answer
     if [ "$answer" != "y" ] ; then
       exit 0
     fi 
  fi
  TMP=`odmget lpp | awk -F\" '/name/ {print $2}' | egrep "$NAMES"`
  LPPS=`echo $LPPS $TMP`
done

if [ "$LPPS" = "" ]
then
  echo "failed.\nNo LPP with the name $NAMES detected."
  exit 1
fi
echo ok.

for ODMDIR in $ODMDIRS ; do
  mkdir -p /tmp/rmlpp/$ODMDIR > /dev/null 2>&1
done

> /tmp/listOfFilesToRM$$    # truncate temporary file, just in case.
echo
echo This script is about to attempt to remove an LPP from your system.
echo I say attempt, because it could fail.  If it fails, you may have
echo to at least reload the LPP.  Use the \"lppchk\" command to make sure
echo all is well with your system.
echo
# Loop through all the LPP names found.
for LPP in $LPPS
do
  DESCR=none
  answer=""

  # find the LPP ids.  They will be different in the three SWVPD databases.
  for ODMDIR in $ODMDIRS ; do
    # get the lpp id for this ODMDIR (yes, they are different)
    LPPID=`odmget -q name=$LPP lpp | grep lpp_id | sed 's/.* = //'`

    # did we find the LPP?
    if [ "$DESCR" = "none" -a "$LPPID" != ""  ] ; then
      # all the descriptions should be the same
      DESCR=`odmget -q name=$LPP lpp | grep description | sed 's/.* = //'`
      echo "Delete $LPP, $DESCR?"
      echo "y or (n) ->\c"
      read answer
      if [ "$answer" != "y" ] ; then # jump back up to the next LPP name
        continue 2
      fi
    fi
    # if there is no DESCR, then we didn't find the LPP.  Weird.
    if [ "$DESCR" = "none" -o "$LPPID" = "" ] ; then
      continue
    fi
	SOMETHING_DONE_FLAG=true
    # Optionally, save the ODM stuff we are about to remove,
    # in case something goes wrong.  The problem is it is difficult
    # to determine if something really did fail, since these commands
    # don't return any decent error return codes.
    odmget -q lpp_id=$LPPID history   > /tmp/rmlpp/$ODMDIR/$LPP.history
    odmget -q name=$LPP lpp           > /tmp/rmlpp/$ODMDIR/$LPP.lpp
    odmget -q lpp_name=$LPP product   > /tmp/rmlpp/$ODMDIR/$LPP.product
    # Get the list of files and links to remove later....
    odmget -q lpp_id=$LPPID inventory > /tmp/rmlpp/$ODMDIR/$LPP.inventory
    awk -F\" '/loc/ {print $2}' /tmp/rmlpp/$ODMDIR/$LPP.inventory | \
      sed 's/,/ /g' >> /tmp/listOfFilesToRM$$
    odmdelete -o history -q lpp_id=$LPPID   > /dev/null 2>&1
    odmdelete -o lpp -q name=$LPP           > /dev/null 2>&1
    odmdelete -o product -q lpp_name=$LPP   > /dev/null 2>&1
    odmdelete -o inventory -q lpp_id=$LPPID > /dev/null 2>&1
  done
done

if [ "$SOMETHING_DONE_FLAG" = "true" ] ; then

  echo ODM work is done.  Now, time to delete files....

  # This could be catastrophic if there is a problem.  For example,
  # if the ODM database for an application had / as one of its files.
  # You be the judge.  Here's your rope....
  cat /tmp/listOfFilesToRM$$ | sort -r | uniq | xargs rm -rf

  rm -rf /tmp/listOfFilesToRM$$
  echo done.
fi

# take this line out if you want to save your ODM saved files.
rm -rf /tmp/rmlpp

exit 0


1.114: How can I recover space after installing updates?
From: Milt Cloud <cloud@ux1.cso.uiuc.edu>

Note: If you are a /usr server, do not use this because the files
      mentioned below are needed by /usr clients and cannot be deleted.

Installp creates numerous files in /usr to clean up after
failed/rejected installs and also for de-installing uncommitted lpps. 
Once you have COMMITted packages you can remove these files safely. 
Depending on your installation activity the numbers can be significant:
hundreds-to-thousands of files, megabytes of data.

Files eligible for removal are associated with each "product" you have
installed; the largest collection being due to bos. After
COMMITting bos lpps, you may safely remove all files of the form:

              /usr/lpp/bos/deinstl*
              /usr/lpp/bos/inst_U4*
              /usr/lpp/bosadt/deinstl*
        and   /usr/lpp/bosadt/inst_U4*

You may repeat this for all additional COMMITted products (e.g.,
bostext1, bosnet, xlc) you have on your system.

This problem of lingering install files is a known defect in installp. 
If you have installed PTF U411711 (or any superseder of it: U412397,
U413366, U413425) the deadwood in /usr will not be quite as prevalent. 
No single PTF currently available completely corrects this problem.

On my own 320, the following freed up 12.4M in /usr:

       # rm -R /usr/lpp/bos/deinstl*
       # rm -R /usr/lpp/bos/inst_U4*


1.115: Where are the AIX log files kept?
From: dirk@kimosabi.ucsc.edu (Dirk Coldewey)

Such as the equivalent of the SunOS file '/var/log/syslog' and 
'/var/adm/messages'.

If you want regular unix syslog files, you can configure syslogd
in /etc/syslog.conf. Here's the one that I use:

#
# See the supplied /etc/syslog.conf file for copious comments.
#
*.err;kern.debug;auth.notice;user.none          /dev/console
*.err;kern.debug;daemon,auth.notice;mail.crit;user.none /var/adm/messages
lpr.debug                                       /var/adm/lpd-errs

*.alert;kern.err;daemon.err;user.none           operator
*.alert;user.none                               root

*.emerg;user.none                               *

# for loghost machines, to have authentication messages (su, login, etc.)
# logged to a file, un-comment out the following line and adjust the 
# file name as appropriate.
#
# if a non-loghost machine chooses to have such messages 
# sent to the loghost machine, un-comment out the following line.
#
auth.notice                     /var/log/authlog

mail.debug                      /var/log/syslog

# following line for compatibility with old sendmails. they will send
# messages with no facility code, which will be turned into "user" messages
# by the local syslog daemon. only the "loghost" machine needs the following
# line, to cause these old sendmail log messages to be logged in the
# mail syslog file.
#
user.alert                       /var/log/syslog
#
# non-loghost machines will use the following lines to cause "user"
# log messages to be logged locally.
#
user.err                         /dev/console
user.err                         /var/adm/messages
user.alert                       `root, operator'
user.emerg                       *


1.116: How can I log information about ftp accesses to a file?
From: elr@trintex.uucp (Ed Ravin) and
      map@hal.maths.monash.edu.au (Michael Page)

1) In /etc/syslog.conf, add the line:
   daemon.debug		/tmp/daemon.log

2) # touch  /tmp/daemon.log
   # refresh -s syslogd

3) Modify your inetd.conf so that ftpd is called with the "-l" flag.
   You may also want the "-d" flag. This can be done with 'smit inetdconf'.

All the syslog messages from various system daemons should now appear in
the file "/tmp/daemon.log".


1.117: How do I find a file name from the inode number?
From: svpillay@berlioz.crs4.it (Kanthan Pillay)

     find /mntpoint -xdev -inum nnnn -print


1.118: How do I set up postscript accounting?
From: taluskie@utpapa.ph.utexas.edu (Vince Taluskie)

Ephraim Vider originally wrote this program to configure postscript page
accounting. It acts as a backend wrapper which logs accounting
information in /etc/qconfig and can be ftp'd from utpapa.ph.utexas.edu
in /pub/aix/psacct.tar.Z.

Compile with:

cc  pswrap.c -o pswrap -lqb

and then make this program suid root:

chown root pswrap
chmod u+s pswrap

If this step is not done, the printer will hang.

Then start up SMIT and go to :

Spooler
  Manage Local Printer Subsystem
    Local Printer Queue Devices
      Change / Show Characteristics of a Queue Device
        <Select Queue>
          <Select Device>

and change "BACKEND PROGRAM pathname" to the full pathname of pswrap
since pswrap will now handle the backend interface with the queue.

A stream of info will be written to a logfile in /tmp (prob lp0.log) but
this file is mainly used for status info and raw pagecounts. If the
accounting data is going to the qconfig-specified acctfile, then use the
'pac' command to read it. I prefer to have readable ascii data files
instead, so I just comment out the '#define WANT_PAC' line and it will
only go to the ACCTFILE specfied in pswrap.c.

/*  pswrap.c

 compile with:   cc pswrap.c -o pswrap -lqb
 (for doc on the qb library see "understanding backend routines in libqb")

 BTW:  The log_charge() function doesn't seem to do anything,
       but log_pages() updates the accounting info.

Ephraim Vider, original author 

--
Feb 10, 1993

You can set pswrap up to use either the accounting file specified in
/etc/qconfig (which means that you need to get your data from 'pac') or
you can comment out the #define WANT_PAC line and then the accounting
data will only go into the ACCTFILE.

Also modified the logging to the ASCII acctfile so that it looks more
readable.

Vince Taluskie
*/

 #include <stdio.h>
 #include <string.h>
 #include <ctype.h>
 #include <fcntl.h>
 #include <signal.h>
 #include <setjmp.h>
 #include <sys/wait.h>
 #include <IN/backend.h>
 #include <IN/standard.h>
 #include "qprocs.h"
 
 char     *nextword (char *p);
 char     *skipvalue (char *p);
 
 #define LOGDIR     "/tmp"
 #define ACCTFILE   "/usr/adm/acct/lpr/ps-acct"
/* #define WANT_PAC 	1 */     /* this define will also send accounting
                                 info to the acctfile specified in
				 /etc/qconfig file.  If this define is 
				 commented out then accounting info will
				 only go to ACCTFILE  */
 

 char     pcprog[] = "statusdict begin pagecount = end\n\x04";
 
 char     *keyw[] = {
     "idle",
     "busy",
     "waiting",
     "printing",
     "initializing",
     NULL
 };
 enum     { PS_IDLE, PS_BUSY, PS_WAIT, PS_PRINT, PS_INIT, PS_UNKNOWN };
 
 void     giveup();
 jmp_buf  jumper;
 
 char     logfname[30];
 FILE     *logfile, *acctfile;
 
 main (argc, argv)
 int argc;
 char     *argv[];
 {
     char *devname;
     int  pagcnt, c;
     int  pid;
     int  w, status;
 
     if (argc < 2) {
          fprintf(stderr, "Usage: psbe file\n");
          exit(-1);
     }
     if (log_init(argv[1]) < 0) {
          fprintf(stderr, "log_init failed!\n");
          exit(EXITBAD);
     }
     sprintf(logfname, "%s/%s.log", LOGDIR, get_device_name());
     if ((logfile = fopen(logfname, "a")) == NULL) {
          fprintf(stderr, "Can't open logfile.\n");
          exit(EXITBAD);
     }

     if ((acctfile = fopen(ACCTFILE, "a")) == NULL) {
	 fprintf(stderr, "Can't open logfile.\n");
	 exit(EXITBAD);
	 }

     setvbuf(logfile, NULL, _IOLBF, BUFSIZ);
     setvbuf(acctfile, NULL, _IOLBF, BUFSIZ);

     setvbuf(stdin, NULL, _IONBF, 0);
     setvbuf(stdout, NULL, _IONBF, 0);
     fprintf(logfile, "start Job no. %d, queued on %s\n", get_job_number(),
               get_qdate());
     log_status(WAITING);
     pagcnt = getpagecnt();
     log_status(RUNNING);
     if ((pid = fork()) < 0) {
          perror("fork");
          exit(EXITBAD);
     }
     if (pid == 0) {
          argv[0] = "piobe";
          execv("/usr/lpd/piobe", argv);
          perror("exec");
          exit(EXITBAD);
     }
     while ((w = wait(&status)) != pid)
          if (w == -1) {
               perror("wait");
               exit(EXITBAD);
          }
     if (WEXITSTATUS(status) != 0)
          exit(WEXITSTATUS(status));
     log_status(WAITING);

     if (pagcnt > 0 && (c = getpagecnt()) > 0) {
#ifdef WANT_PAC 
          log_pages(c - pagcnt);
#endif
	}

     fprintf(logfile, "end Job no. %d, queued on %s\n", get_job_number(),
               get_qdate());

/* the accounting file format is 

pages_printed     user     queue_printed_on   time_queued

*/

     fprintf(acctfile, "%d %35s %7s    %s \n", (c - pagcnt), get_from(), get_queue_name(), get_qdate());

     fclose(logfile);
     fclose(acctfile);
     exit(EXITOK);
 }
 
 void     giveup ()
 {
     longjmp(jumper, 1);
 }
 
 getpagecnt ()
 {
     int  pc = 0, pstat;
     char buf[81];
 
     if (setjmp(jumper) != 0) {
          fprintf(logfile, "giving up on status\n");
          return (0);
     }
     alarm(60 * 2);
     signal(SIGALRM, giveup);
     do {
          if (!gets(buf)) {
               sleep(5);
               putchar('\x14');    /* ^T returns status */
               sleep(1); /* wait for answer from printer */
               if (!gets(buf))
                    return (0);
          }
          fprintf(logfile, "%s\n", buf);
          if ((pstat = getstatus(buf)) == PS_WAIT) {
               putchar('\x04');
               sleep(1);
          }
     } while (pstat != PS_IDLE);
     alarm(0);
     while (gets(buf))
          fprintf(logfile, "%s\n", buf);
     printf("%s", pcprog);
     sleep(1); /* wait for answer from printer */
     if (!gets(buf))
          return (0);
     if (sscanf(buf, "%d", &pc) != 1)
          return (0);
     fprintf(logfile, "%d\n", pc);
     return (pc);
 }
 
 /*
  * Parser for printer status messages
  */
 
 getstatus (p)
 char     *p;
 {
     char *t;
     int  i;
 
     if ((p = strchr(p, '%')) == NULL)
          return (PS_UNKNOWN);
     if (strncmp(p, "%%[", 3) != 0)
          return (PS_UNKNOWN);
     for (p = nextword(p + 3) ; p != NULL ; p = skipvalue(p)) {
          t = p;
          p = strchr(p, ':');
          *p++ = '\0';
          p = nextword(p);
          if (strcmp(t, "status") == 0)
               break;
     }
     if (p == NULL)
          return (PS_UNKNOWN);
     t = p;
     p = strchr(p, ' ');
     if (p[-1] == ';')
          p--;
     *p = '\0';
     for (i = 0 ; keyw[i] != NULL ; i++)
          if (strcmp(t, keyw[i]) == 0)
               break;
     return (i);
 }
 
 char     *nextword (p)
 char     *p;
 {
     while (isspace(*p))
          p++;
     if (strncmp(p, "]%%", 3) == 0)
          return (NULL);
     return (p);
 }
 
 char     *skipvalue (p)
 char     *p;
 {
     char *t;
 
     while (p != NULL) {
          p = strchr(p, ' ');
          t = p;
          p = nextword(p);
          if (t[-1] == ';')
               break;
     }
     return (p);
 }

 /*********    qprocs.h    ***********/
 /* functions for communication between qdaemon and the backend */
 
 char     *get_from();
 char     *get_to();
 char     *get_qdate();
 char     *get_queue_name();
 char     *get_device_name();
 char     *get_title();


1.119: How do I create boot diskettes for 3.2?

You need to have four formatted diskettes.

boot disk:                bosboot -d /dev/fd0 -a
display disk:             mkdispdskt
display extension disk:   mkextdskt
Install/Maintenance disk: mkinstdskt


1.120: Where can I find tools for performance monitoring?

Free X based performance watcher: xsysstats - ftp site ftp.x.org:/contrib

For 3.2 a few tools are available in /usr/lpp/bosperf. There are tools
to monitor traces, I/O events, CPU, virtual memory, disk block usage,
kernel extensions, etc. It even has a simulator, rmss, that allows one
to try out different memory size configurations to see how it impacts
performance. See 6.05 for the AIX Performance and Tuning Guide.

Monitor is an excellent tty based program that includes:

 - cpu usage
 - load average (from kernel or by using loadavgd program)
 - virtual and real memory usage
 - paging information
 - process events
 - Disk I/O (summary and TOP disks 1.12)
 - TTY I/O
 - Network activity
 - top cpu users 
 - NFS operations (New to 1.11)
 - more detailed disk I/O screen (New to 1.11 with -disk option)
 - more detailed network I/O screen (New to 1.12 with -net option)
 - toggle between normal/top/net/disk display using t,n,d keys

Monitor is available from
ftp.funet.fi:pub/unix/AIX/RS6000/monitor-1.11.tar.Z


1.121: How can I tell what virtual printer a print queue is using?
From: yoder@austin.ibm.com (Stuart R. Yoder)

Use the command 'lsvirprt'. Don't use any parameters and it will
run in an interactive mode that will give you a menu of all virtual
printers on the system with the queue and device for each one.


1.122: Two srcmstr's are less useful than one?
From: hubert@rs530.ncs.mainz.ibm.com (Bernhard Zeller)

This can happen on systems that have no console, or systems with an
async terminal as the console but not attached or turned off. One of the
symptoms is a second srcmstr got run. But the second srcmstr is worthless
as we can't use the stop/startsrc commands, refresh inetd, qdaemon won't
start, etc.

To resolve this, type:

    smit chgtty

and add the keyword 'clocal' in following lines:

   STTY attributes for RUN TIME
   STTY attributes for LOGIN


1.123: How do I set the tty name associated with a physical port?
From: accapadi@mathew.austin.ibm.com (Matt Accapadi)

Let's say you wanted to make a tty on the s1 port and call it rs0000
and a tty on the s2 port and call it rs0001.

You could run:

mkdev -c tty -s rs232 -t tty -l rs0000 -p sa0 -w s1   # creates rs0000
and
mkdev -c tty -s rs232 -t tty -l rs0001 -p sa1 -w s2   # creates rs0001


1.124: How do I use mksysb to clone a system?
From: joann@ariadne.SLAC.Stanford.EDU (Jo Ann Malina)

I use the following steps on the master machine to clone an AIX system:
1) Remove the password from root.
2) Remove the NIS line from the end of the /etc/group file (the last
   line with the +: )
3) Change most of the level '2' designations in /etc/inittab to level
   '3' to prevent them from being started up when the new system is
   booted (the minimum ones to change are rc.nfs and rc.tcpip)
4) Boot in service mode and change the name and ip address to a "spare"
   set to avoid address collision.
5) Clear /tmp, /usr/tmp and /usr/spool/lpd/stat.
6) Run mkszfile and edit it to be sure /usr is as small as possible;
   then mksysb from the command line.

The above changes allow me to boot in normal mode the first time, get in
as root, change the above files back and do the other things necessary
to configure the new system.

Then, of course, I go back and clean up and reboot my master machine.

Note: 1 and 2 lets you log in even if you can't get on the network. 
   It prevents the login process from trying to reach an NIS server. 
   Step 2 needed only if you use NIS.


1.125: How do I retain timestamps with mksysb?
Originally From: graeme@ccu1.aukuni.ac.nz ( Graeme Moffat)

As of AIX 3.2.5 bosrest preserves timestamps and permissions as does pax.

In AIX 3.2.2 /usr/lpp/bosinst/bosnet (for net installs), and bosrest
(tape), the 'pax' commands all have '-pmop' options.  m = "DON'T
retain modification times".  So, simply change all the '-pmop' to
'-pop' and remake inst/maint diskettes or mksysb tapes.


1.126: How can I find out the machine type?
From: umar@compsci.cas.vanderbilt.edu (Sait Umar)

#!/bin/sh
#
#  Author G. Vitillaro              (peppe@ipgaix.unipg.it)
#  from an idea of Marc Pawliger    (marc@ibmpa.awdpa.ibm.com)
#
#  10/12/92  GVT  First (and last) implementation
#
# machine : will get machine type on RISC/6000
#
#
awk '
        BEGIN {
                m["10"]="7013/530 or 7016/730";
                m["11"]="7013/540";
                m["14"]="7013/540";
                m["18"]="7013/530H";
                m["1C"]="7013/550";
                m["20"]="7015/930";
                m["2E"]="7015/950";
                m["2E"]="7015/950E";
                m["30"]="7013/520";
                m["31"]="7012/320";
                m["34"]="7013/520H";
                m["35"]="7012/320H or 320E";
                m["37"]="7012/340";
                m["38"]="7012/350";
                m["41"]="7011/220";
                m["43"]="7011/M20";
                m["46"]="250/PowerPC";
                m["47"]="230/RSC";
                m["5C"]="7013/560";
                m["63"]="7015/970";
                m["64"]="7015/980";
                m["66"]="7015/580";
                m["67"]="7015/570";
		m["70"]="590/POWER2";
    		m["71"]="580H";
                m["75"]="7012/370, 375, or 37T";
                m["76"]="7012/360, 365, or 36T";
                m["77"]="7012/350, 355, or 7013/550L";
                m["78"]="7012/315 or 7013/510 ";
    		m["80"]="990/POWER2";

    You should request anyone with a model N40 run 'uname -m | cut -c9-10'
    so you can add an entry for it.
                if ( m[code] != "" )
                        print "This RISC/6000 is a " m[code];
                else
                        print "Unknown Machine";
        }
' code=`uname -m | cut -c9-10` < /dev/null


1.127: Updating to 3.2.5
From: kraemerf@franvm3.VNET.IBM.COM (Frank Kraemer)

(Ed.  The following is useful if you have to update a large number of
systems, large being > 3.)

   *** WARNING : Modify the scripts if you need dataless, diskless   ***
   ***           or remote /usr support.                             ***

1) Receive the PMP3250 tape from your AIX support center the PTF number
   is U493250.

2) Create a filesystem with 240 MB of space (60 PP's) and mount it as

   /dev/pmp3250  -  /pub/pmp3250

3) Insert the tape (blocksize is 512) and install PTF U422467

   # installp -BXacgq -d /dev/rmt0 bos.obj 3.2.0.0.U422467

4) Use the following script to load the tape in the new filesystem

   # cd /pub/pmp3250
   # mktape2disk.sh 0 447             <<-- read 447 files from rmt0

=-=-=-=-=-=-=-= cut here =-=-=-=-=-=-=-=-=-=-=
#!/bin/ksh
# @(#) mktape2disk.sh  creates files from tape on disk.

# change name prefix here
NAME="f"

# from file #i to file #j
integer i=1
integer j

# test arguments
if [ -z "${1}" ]
then
  echo "\nusage: $(basename ${0}) <drive_no> <#files>\n"
  echo "\t<drive_no>: tape drive number (e.g. 0)"
  echo "\t<#files>  : number of files to copy from the tape\n"
  exit 1
fi
device=/dev/rmt${1}.1

# test arguments
if [ -z "${2}" ]
then
  echo "\nusage: $(basename ${0}) <drive_no> <#files>\n"
  echo "\t<drive_no>: tape drive number (e.g. 0)"
  echo "\t<#files>  : number of files to copy from the tape\n"
  exit 1
fi
j=${2}

tctl -f ${device} rewind
if [ $? -ne 0 ]
then
  exit 1
fi

# create tape
while [ ${i} -le ${j} ]
do
    echo "Copy file #${i} of #${j} from (${device}) to disk as (${NAME}${i})."
    dd if=${device} of="${NAME}${i}" bs=200k
    i=i+1
done
tctl -f ${device} rewind
exit 0
=-=-=-=-=-=-=-= cut here =-=-=-=-=-=-=-=-=-=-=

5) Create a new .toc file

   # cd /pub/pmp3250
   # inutoc .
   # pg .toc

6) Place the following file named 'runme.sh' in the PMP directory

=-=-=-=-=-=-=-= cut here =-=-=-=-=-=-=-=-=-=-=
#!/bin/ksh
# @(#) runme.sh for PMP3250
#
INSTP="/usr/sbin/installp"
LOG="/tmp/installp.log"
TEE="/usr/bin/tee"
PATCHDIR=$(pwd)
#
/usr/bin/cp /usr/lpp/info/data/ispaths /usr/lpp/info/data/ispaths.save
#
INFODIR="/usr/lpp/info/$LANG/aixmin"
/usr/bin/mkdir ${INFODIR} 2>/dev/null >/dev/null
if [ ! -w ${INFODIR} ]
then
    print "\n\t*ERROR* Can not (write) access [${INFODIR}]."
    print "\tPlease unmount CD or NFS filesystems.\n"
    exit -1
fi
#
# Commit all ptf's
#
${INSTP} -Xc all 2>&1 | ${TEE} ${LOG}.0
#
# Install latest installp patch
#
${INSTP} -BXacgq -d ${PATCHDIR} bos.obj 3.2.0.0.U422463 2>&1 | ${TEE} ${LOG}.1
#
# Install latest installp patch
#
${INSTP} -BXacgq -d ${PATCHDIR} bos.obj 3.2.0.0.U422467 2>&1 | ${TEE} ${LOG}.6
#
# Run the ptfdir clean utility.
#
/usr/sbin/ptfdir_clean -y -f -v 2>&1 | ${TEE} ${LOG}.2
#
# Install the PMP.    Version 1
#
/usr/lib/instl/sm_inst installp_cmd   \
        -T m -q -a -g -B              \
        -d ${PATCHDIR}                \
        -S '3250 AIX Maintenance Level U493250' \
        -c  -N  -X                    \
        2>&1 | ${TEE} ${LOG}.3
#
# Install the PMP.    Version 2
#
# /usr/sbin/update_all
#
# Install latest installp patch
#
/usr/bin/lppchk -v | ${TEE} ${LOG}.4
#
# Show level of installp patch
#
/usr/bin/lslpp -m bos.obj | ${TEE} ${LOG}.5
#
# Guess you should reboot now.
#
sync;sync
print - "\n\n\tDone......guess you should reboot now !!\n"
exit 0
=-=-=-=-=-=-=-= cut here =-=-=-=-=-=-=-=-=-=-=

7) To run the update on your server

   ===>> Please read the Installation Instructions first <<==

   # cd /pub/pmp3250
   # ./runme.sh

                   ........WAIT...........

   # /etc/shutdown -Fr

8) NFS export the PMP dir as READ-ONLY to all your clients.

9) To update a client system

    a -  Mount the PMP filesystem from the server
    b -  cd <mounted_filesystem>
    c -  execute ./runme.sh
    d -  Unmount PMP filesystem
    e -  reboot

10) To create a copy 1:1 of the tape you received use the script 'mktape.sh'

   # cd /pub/pmp3250
   # mktape.sh 0

=-=-=-=-=-=-=-= cut here =-=-=-=-=-=-=-=-=-=-=
#!/bin/ksh
# @(#) mktape.sh: creates a bootable tape from images on disk

# change name prefix here
NAME="f"

# usage: mktape drive_no
#        drive_no = tape drive number
# test arguments
if [ -z "${1}" ]
then
  echo "\nusage: mktape <drive_no>"
  echo "         <drive_no>: tape drive number (e.g. 0)\n"
  exit 1
fi
device=/dev/rmt${1}.1

tctl -f ${device} rewind
if [ $? -ne 0 ]
then
  exit 1
fi

# create tape
i=1
while test -r "${NAME}${i}"
do
    echo "copy ${i}"
    if [ $i -le 3 ]
    then
      dd if="${NAME}${i}" of=${device} conv=sync bs=1k
    else
      dd if="${NAME}${i}" of=${device} bs=200k
    fi
    let i=${i}+1
done
tctl -f ${device} rewind
exit 0


1.128: AIX fix strategy
From: leedp@austin.ibm.com (Dennis Lee, PMP Release Manager)

First, a little history...

The maintenance strategy for AIX 3.1 was cumulative updates. Every few
months, we'd put all available fixes in one large package and ship it. 
There was no real strategy for providing a single fix. Although we'd
occasionally produce an emergency patch, there was no method for
tracking them; if you got a second one, it might overwrite the first. 
So, after a few of these patches, it's hard to track.

In AIX 3.2 we introduced a "selective fix" strategy to support
individual fixes. The package contained information about other fixes
that were required for that fix to work correctly. For example, a Korn
shell fix might require a change in libc.a, which might in turn require
a fix in the kernel. This strategy allowed us to keep track of which
fixes were installed to make sure we didn't overwrite one with another,
and make sure they all worked together. But the initial selective fix
design still had a few problems.

  o None of the fixes were cumulative.  If you got a fix for Korn shell,
    you may not receive all of the fixes for Korn shell.  This left the
    possibility of rediscovering other problems that were already fixed.

  o Since we chose to fix everything possible that was reported as a
    problem, instead of deferring them to the next release, the number
    of available fixes became quite large.

  o The number of additional fixes required by any given fix could also
    be quite large.  Since the installation program ran once for each
    fix, the size and complexity of the fix packages grew, and
    installation time lengthens greatly.

While developing the AIX 3.2.4 upgrade, we undertook a large effort to
resolve the selective fix concerns, and dramatically increase the
quality of AIX 3.2.  The base operating system and most of the optional
program products were split into subsystems.  A subsystem is a group of
logically related files.  The division was made such that changes to a
given subsystem were less likely to affect other subsystems.  In total
there are approximately 500 subsystems, but in practice, files have been
modified in only about half of them.  The advantages of the new
packaging strategy are:

  o Each subsystem package is cumulative, containing all of the fixes
    and enhancements to date for that subsystem.

  o The cumulative subsystem package is tested as an entity.

  o The number of fix packages is greatly reduced because the number of
    subsystems is far fewer than the number of fixes and enhancements.

  o The number of other fixes required by any given fix is also greatly
    reduced because a subsystem package has requisites only on other
    subsystem packages.

  o The reduced number of fix packages greatly reduced installation time.

Some customers also told us that they liked the maintenance level
strategy that we used in AIX 3.1.  They liked being able to install all
of the known fixes, and they liked knowing what "level" of AIX they had. 
To meet these requirements, we produced a Preventive Maintenance Package
(PMP).  The PMP is simply a collection of the latest cumulative
subsystem packages tied together in such a way that it can be installed
by selecting a single fix.  We also added flags to the lslpp command and
added a new command, oslevel, to show which PMP is installed.  Now we
had both! The good attributes of selective fix along with the good
attributes of maintenance levels. 

A few Q&As: 

Q. Why is the fix I just received 130 megabytes!@#? I already have the
AIX 3.2.4 update installed!
A. Your fix may be part of the AIX 3.2.5 update. AIX 3.2.5 is another
PMP that contains all of the fixes to date, as well as enhancements 
to support the PowerPC model 250, and the new high-end RS/2 models
590 and 990, as well as support for new disk and tape drives, graphics
adapters and more.

Q. Why can't you just build my fix on 3.2.4? 
A. There really isn't such a thing as 3.2.1 or 3.2.2 or even 3.2.4. 
They're just collections of fixes and enhancements built on a 3.2 base. 
If the fix for your problem was built prior to 3.2.5, you can get the
older version. But if your fix was built for the first time in a 3.2.5
subsystem, that's the only version of the fix that exists.

See also 6.02.


1.129: Are passwords limited to 8 char?

AIX passwords are only significant to 8 characters. You can set a
passwd to more than 8 characters but anything over eight are ignored.
No messages or warnings are given.

Be careful if you're running NIS. You probably want to limit passwords
to 8 char on all machines (6000 and others) to be compatible.

Someone mentioned that DCE supports kerberos which supports passwords
greater than 8 characters.


1.130: How do I increase the number of ptys > 64?
From: mick@oahu.cern.ch (Mickey Coggins)

SMIT only allows 64. Try this:

odmget -q"attribute=num and uniquetype=pty/pty/pty" PdAt |
sed "s/0-64/0-512/" |
odmchange -q"attribute=num and uniquetype=pty/pty/pty" -o PdAt

chdev -l pty0 -anum=256 -P
reboot


1.131: CERT advisories on sendmail and xterm

The following fixes are available for some CERT advisories on problems
with sendmail and xterm.

sendmail        - fix available as U426396
xterm for X11R4 - fix available as U422575
xterm for X11R5 - fix available as U425811

1.132: How do I remove a non-existant physical volume?
Thanks to Johnny Shieh (shieh@austin.ibm.com)

To delete a phantom disk from the ODM use reducevg with the pvid
instead of the disk name.  You are running some command such as lsvg
or varyonvg and it is griping about a disk that is no longer findable
right?  In that warning message, it should give you a pvid.  Then
simply:

reducevg -f <pvid>


1.200: Some info about tape backups
From: Craig Anderson

The following supplements the information on rmt devices in
InfoExplorer. It is based on my own personal experience with IBM tape
drives running on AIX 3.1. No warranty is expressed or implied.

CONFIGURING THROUGH SMIT:
    BLOCK size (0=variable length)		(ALL)
	Sets the tape block size.  When reading, the block size must be
	set to the block size set when the tape was written.  When
	using some commands, tapes written with ANY block size can be
	read if the block size is set to 0 (variable length) (see
	"BLOCK SIZES" below).

    Use DEVICE BUFFERS during writes		(ALL)
	Set to yes, the device will buffer data internally on writes.
	This greatly improves performance, but under certain cases may
	be undesirable since the data is not written to tape before
	returning a good indication.

    Use EXTENDED file marks			(8mm only)
	Extended file marks take up much more space than short (or
	non-extended) file marks.  But extended file marks can be
	overwritten, allowing data not at the beginning of tape to be
	overwritten (see "FILE MARKS" below).

    RETENSION on tape change or reset		(1/4" only)
	If set to "no" then the tape will not be retentioned
	automatically when the tape is inserted.  Note that this will
	take effect only after the device is used.


FILE MARKS:
     Tape devices support multiple tape files.  Tape files are the
     result of a backup/cpio/tar/dd type command, where the device is
     opened, written to, and closed.  Because tapes allow large
     quantities of data to be written on a single tape, several backups
     (that is, tape files), may be combined on one physical tape.
     Between each tape file is a "tape file mark" or simply "file
     mark".  These file marks are used by the device driver to indicate
     where one tape file ends and another begins.

                              B       E
                   <-------   O       O   ------->
                              T       T
              __ ____________________________ _______________
     physical | \            |       |      \             |physical
     beginning|  \           | tape  |       \            | end
       of     |   \          | file  |        \           |  of
      tape    |    \         | mark  |         \          | tape
              |_____\________|_______|__________\_________|
 
     Note that there is a distinction between the beginning of tape
     (BOT) side of a file mark and the end of tape (EOT) side of a file
     mark.  If the head is on the BOT side of a file- mark, "tctl fsf
     1" command will move only to the EOT side of the same file mark.

     With the 1/4" tape drive, writing can only take place
     sequentially, or after blank tape has been detected.  You cannot
     write over data on the tape (except at BOT).  If you wish to add
     data to a tape which has been written and then rewound you should
     space forward file mark until an error occurs.  Only then can
     you start writing again.

     With an 8mm tape drive, writing can only take place before blank
     tape, an EXTENDED file mark, or at BOT.  Thus if several backups
     have been made on one tape and you wish to overwrite one of the
     backups, position the tape to the place you wish to start writing
     and issue the following commands:
	tctl bsf 1
	tctl eof 1
     The first command skips back to the BOT side of the same file
     mark.  The second command rewrites the file mark (writing is
     allowed before extended file marks).  The erase head will erase
     data ahead of the write head, so that after writing the file mark
     the head will be positioned before blank tape.  Only after this
     may you start writing over data in the middle of the tape.  (All
     data beyond where you are currently writing will be lost).  Note
     that you cannot write over short file marks.  In order for this to
     work, the tape must have been written with extended file marks
     (use smit to change this).

     With the 9-track drive writing can take place anywhere on the
     tape although overwriting single blocks of data is not supported.

     On the 8mm drive extended filemarks use 2.2 megabytes of tape and
     can take up to 8.5 seconds to write.  Short filemarks use 184K
     and take up to 1.5 seconds to write.

BLOCK SIZES:
     When data is written to tape it is written in blocks.  The blocks
     on a tape are separated by inter-record gaps.  It is important to
     understand the structure of the written tape in order to
     understand the problems which can occur with changing block
     sizes.

     In fixed block size mode all blocks on the tape are the same
     size.  They are the size of the block size set in the device
     configuration.  All read()s and write()s to the tape drive must be
     a multiple of the fixed block size.

     In fixed block mode a read() will return as many blocks as needed
     to satisfy the read() request.  If a file mark is encountered
     while reading the tape only the data up until the file mark will
     be returned.

     It is not possible for the tape drive to read a tape whose block
     size is not the same as the block size in the device
     configuration.  (Unless the device configuration is in variable
     size blocks.)

     In variable block size (0) mode, the blocks written on the tape
     are the size of the read() and write() requests to the device
     driver.  In this case, the actual block sizes on the tape can be
     changed using the options to the backup commands (tar -C, cpio -C,
     backup -C).

     In variable mode, read() requests greater than size of the block
     on the tape will return only the data from the next block on the
     tape.  It is this feature that allows tapes written in any block
     size (fixed or variable) to read with the dd command (the output
     from the dd command may be piped to restore, tar, or cpio for
     example.)  Note that backup, tar, and cpio cannot read all tapes
     by using a large block size because they assume there is an error
     if they get a short read().
		dd ibs=128k obs=16k if=/dev/rmt0 | ...

     The tape head is always positioned at an inter-record gap, file
     mark, or blank tape after reading or writing.

     With the 8mm tape drive, using a fixed block size which is not a
     multiple of 1K is inefficient.  The 8mm tape drive always writes
     internally in 1K blocks.  It simulates the effect of variable
     block sizes, but, for example, using a fixed block size of 512
     bytes (or using variable block size and write()ing 512 bytes at a
     time) wastes one half of the tape capacity and gives only one half
     the maximum transfer rate.

     To figure out a tape's actual block size try:

     1). Set the tape to variable block size.
     2). "dd if=<tape> of=/tmp/dummy bs=128k count=1"
     3). "ls -l /tmp/dummy"
     4). The number of bytes in "/tmp/dummy" is the physical block size.

EXCHANGING DATA WITH NON-UNIX AND OTHER VENDORS MACHINES:
     Many tape drives support both variable and fixed block sizes.

     Variable block mode writes block sizes the size of the write
     command issued (tar and backup specify this with the -b option). 
     In fixed mode, block sizes are fixed and all writes must be a
     multiple of the fixed block size.

     Unix often internally chops larger reads and writes up into
     manageable pieces (often 65535, 65534, or 65532 bytes) before
     doing the actual reads and writes.  This means reads and writes of
     64K bytes are often broken up into a 65535 byte record and a 1
     byte record (In fixed mode the write will fail).  Block sizes >=
     64K (-C128 and greater) should be avoided for this reason.  AIX
     does not break up read and write requests, but be aware of the
     situation on other machines.

     If the tape is written in an unknown block size then set the
     device configuration in smit to use variable size blocks, use the
     "dd" command with a large input block size, and pipe it to the
     restore command.  For example:
	  chdev -l rmt0 -a block_size=0
	  dd if=/dev/rmt0 ibs=128k obs=16k | tar -tvf-

Path: bloom-beacon.mit.edu!grapevine.lcs.mit.edu!uhog.mit.edu!MathWorks.Com!yeshua.marcam.com!zip.eecs.umich.edu!newsxfer.itd.umich.edu!uunet!newsserver.amsinc.com!162.70.244.20!jwarring
From: jwarring@flaixy.amsinc.com (Jeff Warrington)
Newsgroups: comp.unix.aix,comp.answers,news.answers
Subject: AIX Frequently Asked Questions (Part 2 of 3)
Supersedes: <3031@flAIXy.fd.amsinc.com>
Followup-To: comp.unix.aix
Date: 12 Aug 1994 21:13:13 GMT
Organization: American Management Systems, Inc.
Lines: 1670
Approved: news-answers-request@MIT.EDU
Distribution: world
Expires: 30 Sep 94 01:23:45 GMT
Message-ID: <3041@flAIXy.fd.amsinc.com>
Reply-To: jwarring@flAIXy.fd.amsinc.com
NNTP-Posting-Host: flaixy.fd.amsinc.com
Summary: This posting contains a list of Frequently Asked Questions 
         and their answers about AIX, IBM's version of Unix.
Keywords: AIX RS/6000 questions answers
Xref: bloom-beacon.mit.edu comp.unix.aix:30381 comp.answers:6741 news.answers:23913

Archive-name: aix-faq/part2
Last-modified: Aug 12, 1994
Version: 3.40


Version: $Id$

Frequently Asked Questions to AIX 3.x and IBM RS/6000
_____________________________________________________

1.201: How do I do remote backup?

There seems to be several ways of doing this. I found the following works:

  tar -b1 -cf - . | rsh REMOTEHOST "dd ibs=512 obs=1024 of=/dev/TAPEDEVICE"


From: kraemerf@franvm3.VNET.IBM.COM (Frank Kraemer)

mksysb will not back up to remote tape devices. The following script
will do remote backups.

[Ed.: I've verified this script works fine. However, it may be slow for
 large filesystems since it creates a temp file of filenames in /tmp.]

#!/bin/ksh
# @(#) Create a backup tape of the private user data.
#=================================================================#
#   Script :  usave.sh                                            #
#   Author :  F. Kraemer                                          #
#   Date   :  92/02/19                                            #
#   Update :  92/10/29                                            #
#   Info   :  the ultimative backup script                        #
#   Example:  usave.sh /dev/rmt0      -  save to local tape       #
#             usave.sh /save/save.me  -  save to local file       #
#             usave.sh /tmp/pipe      -  save to remote tape      #
#-----------------------------------------------------------------#
PS4="(+) "
#set -x
PROG=$(basename $0)
HOST=$(hostname)
TODAY=$(date +%H:%M:%S)
#
# cleanup
#
cleanup ()
{
ec=$1
error=$2
case "$ec"
in
   "$USAGE_EC")    # usage error
     error="Usage:\t$PROG DeviceName\n" 1>&2
    ;;
   "$NOTAP_EC")    # Tape error
     error="error:\t$PROG: $DEVICE is not available on the system.\n" 1>&2
    ;;
   "$LISTE_EC")    # list error
     error="error:\t$PROG: could not create tar list for $LOGNAME.\n" 1>&2
    ;;
   "$NOTAR_EC")    # tar command error
     error="error:\t$PROG: tar command failed.\n" 1>&2
    ;;
   "$PIPEP_EC")    # pipe error
     error="error:\t$PROG: mknod command failed.\n" 1>&2
    ;;
   "$NORSH_EC")    # rsh error
     error="error:\t$PROG: rsh - Remote Shell command failed.\n" 1>&2
    ;;
   "$RHOST_EC")    # remote host error
     error="error:\t$PROG: Remote Host unknown.\n" 1>&2
    ;;
   *)
   ;;
esac
case "$DEVICE"
in
    #
    # Fix the block size if $DEVICE is a tape device
    #
    /dev/rmt[0-9]*)
        echo "\n\t$PROG: Rewinding tape to begin.........(please wait)\n"
        tctl -f $DEVICE rewind 2>/dev/null
        ;;
    *) ;;
esac
rm -f ${LIST} ${PIPE} 2>/dev/null
[ -n "$error" ] && echo "\n${error}\n"
trap '' 0 1 2 15
exit "$ec"
}
#
# Variables
#
USAGE_EC=1                         # exit code for usage error
NOMNT_EC=2                         # exit code wrong device name
NOTAP_EC=3                         # exit code no tape available
LISTE_EC=4                         # exit code backup list error
NOTAR_EC=5                         # exit code for wrong tar
TRAPP_EC=6                         # exit code for trap
PIPEP_EC=7                         # exit code for pipe
RHOST_EC=8                         # exit code for bad ping
NORSH_EC=9                         # exit code for bad rsh
DEVICE="$1"                        # device to tar into
LIST="/tmp/.tar.$LOGNAME.$$"       #
REMOTEH=""                         # Remote host for backup
REMOTET=""                         # Remote tape for backup
tapedev=                           #
PIPE="/tmp/pipe"                   # Pipe for remote backup
#
# main()
#
tput clear
echo "\n\t$PROG started from $LOGNAME@$HOST on $TERM at $TODAY.\n"
rm -f $LIST 2>/dev/null
#
# Trap on exit/interrupt/break to clean up
#
trap "cleanup $TRAPP_EC \"Abnormal program termination. $PROG"\"  0 1 2 15
#
# Check command options
#
[ "$#" -ne 1 ]  &&  cleanup "$USAGE_EC" ""
#
# Check device name
#
[ `expr "$DEVICE" : "[/]"` -eq 0 ] && cleanup "$NOMNT_EC" \
        "$PROG: Backup device or file name must start with a '/'."
#
# Check tape device
#
case "$DEVICE"
in
    #
    # Fix the block size if $DEVICE is a tape device
    #
    /dev/rmt[0-9]*)
        #
        echo "\n\t$PROG: Verify backup media ($DEVICE)............\n"
        #
        # see if a low or high density tape device was specified
        # (eg rmt0.1)
        density="`expr $DEVICE : \
                "/dev/rmt[0-9]*\.\([0-9]*\)"`"
        #
        # strip /dev/ from device name and
        # get the base name (eg translate:
        # /dev/rmt0.2 to rmt0)
        #
        tapedev="`expr $DEVICE : \
                "/dev/\(rmt[0-9]*\)[\.]*[0-9]*"`"
        #
        # Check if the tape is defined in the system.
        lsdev -C -c tape -S Available -F "name" | grep $tapedev >/dev/null 2>&1
        rc=$?
        [ "$rc" -ne 0 ] && cleanup "$NOTAP_EC" ""
        #
        # Restore old tape name.
        #
        [ "${density:-1}" -lt 4 ] && density=1 || density=5
        DEVICE="/dev/${tapedev}.${density}"
        echo "\n\t$PROG: Insert a tape in ($DEVICE)........(press enter)\n"
        read TEMP
        echo "\n\t$PROG: Rewinding tape to begin...........(please wait)\n"
        tctl -f $DEVICE rewind 2>/dev/null
        ;;
    #
    # Backup is done on remote host. The remote shell facility
    # must be set up and running.
    #
    ${PIPE}*)
        #
        echo "\n\t$PROG: Assuming remote backup via network.\n"
        echo "\t$PROG: Enter name of Remote Host   ===> \c"
        read REMOTEH
        echo "\n\t$PROG: Pinging Remote Host to test connection.\n"
        ping ${REMOTEH} 1 1 >/dev/null 2>&1
        rc=$?                                    # give up unknown host
        [ "$rc" -ne 0 ] && cleanup "$RHOST_EC" ""
        JUNK=$(rsh ${REMOTEH} "/usr/sbin/lsdev -C -c tape -S Available")
        rc=$?                                    # give up rsh failed
        [ "$rc" -ne 0 ] && cleanup "$NORSH_EC" ""
        echo "\t$PROG: Available Tapes on ${REMOTEH} are :\n\n\t\t${JUNK}\n"
        echo "\t$PROG: Enter name of Remote Tape (e.g. /dev/rmt0) ===> \c"
        read REMOTET
        echo "\n\t$PROG: Insert tape on ${REMOTEH} in ${REMOTET}..(press enter)"
        read TEMP
        echo "\t$PROG: Rewinding Remote Tape ${REMOTET} on ${REMOTEH}.\n"
        rsh ${REMOTEH} "tctl -f ${REMOTET} rewind"
        rc=$?                                    # give up rsh failed
        [ "$rc" -ne 0 ] && cleanup "$NOTAP_EC" ""
        rm -f ${PIPE} 2>/dev/null
        mknod ${PIPE} p
        rc=$?                                    # give up mknod failed
        [ "$rc" -ne 0 ] && cleanup "$PIPEP_EC" ""
        cat ${DEVICE} | rsh ${REMOTEH} "dd of=${REMOTET} obs=100b 2>/dev/null" &
        ;;
    *)  ;;
esac
#
# Prepare the list
#
echo "\n\t$PROG: Create list of files to be saved...."
find $HOME -print > $LIST
rc=$?
[ "$rc" -ne 0 ] &&  cleanup "$LISTE_EC" ""
#
# tar the files
#
echo "\n\t$PROG: Changing current directory to (/)...."
cd / > /dev/null 2>&1
echo "\n\t$PROG: Running tar format backup from user ($LOGNAME)...."
tar -cvf "$DEVICE" -L "$LIST"
rc="$?"
[ "$rc" -ne 0 ]  && cleanup "$NOTAR_EC" ""
#
# Backup completed
#
TODAY=$(date +%H:%M:%S)
echo "\n\t$PROG ended at $TODAY............................\n\n"
cleanup 0


1.202: How do I backup a multi-disk volume group?
From: pack@acd.ucar.edu (Daniel Packman)

[ Ed.: I have not verified this procedure. I would actually recommend
  NOT to have one volume group span multiple disks unless you really
  need such big logical volumes. ]

  1. If you have a set of three or more disks in a volume group
     (typically 3 for 5xx machines with three internal drives;
     with only two, the procedures outlined here have to be modified
     to ignore the fact that you don't have a quorum in the volume group)

  2. If one drive has failed (usually only one fails at a time :-) )

It is possible to go through a service boot (the volume group is called
rootvg and one of the 2 good disks on it is called hdisk0):

  importvg -y rootvg hdisk0
  varyonvg -f -n -m1 rootvg

These commands will work, but give error messages. If you wish to mount
a user filesystem, say /u on logical volume /dev/lv00, then

  mount -f /dev/lv00 /v

will work only if jfslog, the journaled file system log device, is not
on the damaged disk. If it is, you must (and can in any case) mount the
filesystem read-only:

  mount -f -r /dev/lv00 /v

This crucial and rather obvious point baffled several level 3 support
personnel at Austin as well as myself for almost a week. Once the file
system(s) of interest are available, they can be saved to tape for
restoration later. Of course, one can expect only about two thirds of a
filesystem to be recoverable if it spans all 3 physical disks. One
other point to remember is that the standard boot procedure from floppy
includes the restore command but does not include the backup command.

*****************************************************************************
* If you do not have other RS6000 machines at your site it is imperative    * 
* that you either build a bootable tape which includes either restore or    * 
* tar or cpio (a bootable floppy set will not have enough space) or at the  *
* very least copy onto a spare floppy backup, cpio, or tar.  The floppy     *
* should be created with backup -ivq so that its contents can be read into  *
* the memory resident system after booting.                                 *
*****************************************************************************

All is not lost if tar, cpio or backup are available on an undamaged
disk that can be mounted. Since tar and cpio are in /bin, they may both
very well be unavailable.

It is a very good idea for those who have tape devices to build a
bootable tape with their desired extra commands in it. Follow the
instructions from IBM but add your desired commands to the following
three files:

    /usr/lpp/bosinst/tape2
    /usr/lpp/bosinst/diskette/boot2
    /usr/lpp/bosinst/diskette/inslist

If you have anything other than a minimum memory configuration, you
should be able to add many commands.


1.203: How do I put multiple backups on a single 8mm tape?
From: kerm@mcnc.org (Cary E. Burnette)

There are two possible solutions to this, both of which use /dev/rmt0.1
which is non-rewinding.

SOLUTION #1
-----------

To put multiple backups on a single tape, use /dev/rmt0.1, which is a
no-rewind device, using either rdump or backup (both by name & inode
work). Using rdump or backup "byinode" both generate the message that
the tape is rewinding but actually do not. This is an example that
works on my system:

# rsh remote1 -l root /etc/rdump host:/dev/rmt0.1 -Level -u /u
# rsh remote2 -l root /etc/rdump host:/dev/rmt0.1 -Level -u /u
# tctl -f /dev/rmt0.1 rewind       # rewinds the tape

where I am implementing the command from host.
To restore a table of contents of the first I would use 

# restore -f /dev/rmt0.1 -s1 -tv

where the -s1 flag tells restore to go to the first record on the tape. 
Type the exact command again to get the second record. The -s(Number)
means go to Number record from this spot. It works pretty well.


SOLUTION #2
-----------

Steve Knodle
Educational Resources Center
Clarkson University

I use:
------------------- Dump.sh --------------------
CONTENTSFILE=`date |dd conv=lcase |sed -e 's/19//' |awk '{print $6 $2 $3}'`
set -x
LEVEL=$1
shift

backup -c -b 56 -$LEVEL -uf /dev/rmt0.1 /
backup -c -b 56 -$LEVEL -uf /dev/rmt0.1 /usr
backup -c -b 56 -$LEVEL -uf /dev/rmt0.1 /u
tctl -f /dev/rmt0 rewind

touch /usr/local/dumps/Contents.$CONTENTSFILE
echo "Dumping /" >>/usr/local/dumps/Contents.$CONTENTSFILE
restore -t -s 1 -f /dev/rmt0.1 >>/usr/local/dumps/Contents.$CONTENTSFILE
echo "Dumping /usr" >>/usr/local/dumps/Contents.$CONTENTSFILE
restore -t -q -s 1 -f /dev/rmt0.1 >>/usr/local/dumps/Contents.$CONTENTSFILE
echo "Dumping /u" >>/usr/local/dumps/Contents.$CONTENTSFILE
restore -t -q -s 1 -f /dev/rmt0.1 >>/usr/local/dumps/Contents.$CONTENTSFILE
tctl -f /dev/rmt0 rewind

I process the table-of-contents first by a little program that does
common prefix encoding, and then compress.

This gives a table of contents file I can keep on-line until the tape
is reused.


1.204: How can I make an exact duplicate of a tape over the network?

The challenge here is not to have to create a temporary file (disk space
limitation) and work across heterogeneous networks.

This script might work:

LOCAL=/dev/tape_dev
REMOTE=/dev/tape_dev
dd if=$LOCAL ibs=64k obs=512 | rsh remote_host dd ibs=512 obs=64k of=$REMOTE


From: pack@acd.ucar.edu (Daniel Packman)

Daniel provides the following perl script to convert from the known
world's function codes to AIX for compatibility.

#!/bin/perl
# Wrapper to convert input rmt requests to
# AIX 3.2 ioctl numbers.  We pass on all commands we don't understand
# I0 MTWEOF -> I10  STWEOF write and end-of-file record
# I1 MTFSF  -> I11  STFSF  forward space file
# I2 MTBSF  -> I12  STRSF  reverse space file
# I3 MTFSR  -> I13  STFSR  forward space record
# I4 MTBSR  -> I14  STRSR  reverse space record
# I5 MTREW  -> I6   STREW  rewind
# I6 MTOFFL -> I5   STOFFL rewind and unload tape
# I7 MTNOP  -> I0   (no-op? should ignore following count)
# I8 MTRETEN-> I8   STRETEN retension tape, leave at load point
# I9 MTERASE-> I7   STERASE erase tape, leave at load point
#I10 MTEOM (position to end of media ... no ibm equivalent?)
#I11 MTNBSF  (backward space file to BOF ... no ibm equivalent?)
@iocs = (10,11,12,13,14,6,5,0,8,7);
open(RMT,"|/usr/sbin/rmt") || die "Can't open pipe to rmt\n";
select(RMT);
$| = 1;
while (<STDIN>) {
  s/(^I)(\d$)/I$iocs[$2]/;
  exit 0 if $_ =~ /^[Qq]/;
  print RMT $_ ; }
exit 0;


1.205: What is tape block size of 0?
From: benson@odi.com (Benson I. Margulies)

Tape devices are generally split into two categories: fixed block and
variable block.  1/4" tape is the fixed block, and 8mm is variable.

On a fixed block size device, the kernel always sends data to the device
in suitable block size lumps, and varying the size passed to write(2)
(e.g., via the bs option to dd) gives the kernel more data to stream. 
On a variable block size device, the kernel writes to the device
whatever passed to it. On an 8mm, it had better be a multiple of 1024
to get efficient tape usage.

AIX has the World's Only Variable Block Size 1/4" tape drive. If you
use SMIT to set the block size to a nonzero value, AIX treats the device
as fixed block size, whether it is or not. By default, 8mm drives are
set to the same size as 1/4", 512 bytes. This is wasteful, but
otherwise mksysb and installp would fail.

If you set the block size to 0, the device is treated as variable block
size, and the size passed to write becomes the physical block size. 
Then if you use a sensible block size to dd, all should be wonderful.


1.206: Resetting a hung tape drive
From: Craig_Anderson@kcbbs.gen.nz (Craig Anderson)

A process accesses the tape drive. The process stops, exits, or whatever,
but still hold on to the drive. When this happens, the process cannot be
killed by any signal and the tape drive cannot be used by any other
process until the machine is rebooted.

The following should help:

RESET:

AIX, like most UNIX systems has no reset function for tape drives. You
can however send a Bus Device Reset (a standard SCSI message) to the
tape drive using the following piece of code. If the tape drive does
not respond to the BDR, then a SCSI Bus Reset will be sent (and this
will reset every device on the SCSI Bus). SCSI Bus resets are rather
extreme so you should refrain from using this program unnecessarily. 
But there are times (like after you've inserted a jammed/old/bad tape in
an 8mm drive), when there's no other way to reset the device other than
to shutdown and reboot (obviously you can power down and up an external
drive to reset it - and this would be the better choice).

This is actually documented in info, but can be hard to find and
there's no complete program.

/* taperst: resets the tape drive by sending a BDR to the drive. */
#include <stdio.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/scsi.h>

int main(int argc, char **argv)
{
         /* This can be run only by root */

         if (argc != 2) {
             fprintf(stderr, "Usage: %s /dev/rmt#\n", argv[0]);
             return 1;
         }

         if (openx(argv[1], O_RDONLY, 0, SC_FORCED_OPEN) < 0) {
             perror(argv[0]);
             return 2;
         }
         return 0;
}

1.207: How do I read a mksysb tape with tar?
From: Marc Pawliger (marc@sti.com)

To recover specific files from a backup made with mksysb, try
$ tctl fsf 3
$ tar xvf/dev/rmt0.1 ./your/file/name


1.208: How do I read a 5Gbyte tape on a 2Gbyte drive?
Posted by: bobmet@clam.com (Robert Metcalf)

To read a 5Gbyte tape on a 2Gbyte drive, the
tape needs to have been created with a density setting of 20.

The following is from IBM's electronic ASKSUPPORT repository:
  
   R: The 7208 011 5 GB tape drive has various density settings which are
      as follows:
  
     +-------+--------------------------+
     | DENSIT| DESCRIPTION              |
     | SETTIN|                          |
     +-------+--------------------------+
     | 140   | Writes in 5.0GB mode and |
     |       | will enable data com-    |
     |       | pression; also, to do    |
     |       | compression you must use |
     |       | "DATA COMPRESSION = yes" |
     +-------+--------------------------+
     | 21    | Writes in 5.0GB mode and |
     |       | will NOT do data com-    |
     |       | pression                 |
     +-------+--------------------------+
     | 20    | Writes in 2.3GB mode and |
     |       | will NOT do data com-    |
     |       | pression                 |
     +-------+--------------------------+
     | 00    | Factory power-on default |
     |       | for 5.0GB data com-      |
     |       | pression mode            |
     +-------+--------------------------+
  
     The density setting of the 7208 011 must be 20 for it to make a tape
     that is readable by the 7208 001.

______________________________________________________________________________
1.300: Some info about the memory management system
From: Michael Coggins (MCOG@CHVM1.VNET.IBM.COM).

1. Does AIX use more paging space than other unix systems?

Under many scenarios, AIX requires more paging space than other unix
systems. The AIX VMM implements a technique called "early allocation of
paging space". When a page is allocated in RAM, and it is not a
"client" (NFS) or a "persistent" (disk file) storage page, then it is
considered a "working" storage page. Working storage pages are commonly
an application's stack, data, and any shared memory segments. So, when
a program's stack or data area is increased, and RAM is accessed, the
VMM will allocate space in RAM and space on the paging device. This
means that even before RAM is exhausted, paging space is used. This
does not happen on many other unix systems, although they do keep track
of total VM used.

Example 1: 
Workstation with 64mb RAM is running only one small application that
accesses a few small files. Everything fits into RAM, including all
accessed data. On AIX, some paging space will already be used. On
other unix systems, paging space will be 100% free. Clearly, this is an
example that shows where we use more paging space than the other machines.

Example 2:

Same machine as above, except we are in an environment where many
applications are running with inadequate RAM. Also, the system is
running applications that are started, run, left idle, and not in
constant use. A session of FRAME running in a window, for example. 
What happens is that eventually (theoretically) all applications will be
paged out at least once. On the AIX system and the other systems the
total paging requirements will be the same (assuming similar malloc
algorithm). The major difference is that the AIX system allocated the
paging space pages before they were actually needed, and the other
systems did not allocate them until they were needed. However, most
other systems have an internal variable that gets incremented as virtual
memory pages are used. AIX does not do this. This can cause the AIX
system to run out of paging space (virtual memory), even though malloc()
continues to return memory. This "feature" allows sparse memory
segments to work, but requires that all normal users of malloc()
(sbrk()) know how much virtual memory will be available (actually
impossible), and to handle a paging space low condition. A big problem. 
There are some pretty obvious pros and cons to both methods of doing
Virtual Memory.

2. How much paging space do I need?

Concerning the rule of thumb of having 2 times RAM for paging space:
this is rather simplistic, as are most rules of thumb.  If the machine
is in a "persistent storage environment", meaning that they have a few
small programs, and lots of data, they may not need even as much as 1
times RAM for paging space.  For example, a 1GB database server running
on a 6000 with 256MB of RAM, and only running about 50MB of "working"
storage does not need 512MB of paging space, or even 256MB.  They only
need the amount of paging space that will allow all their working
storage to be paged out to disk.  This is because the 1GB database is
mostly "persistent storage", and will require little or no paging space. 
Excessive paging space may simply mean wasted disk space.  However,
avoid insufficient paging space.  Tip: Don't have more than one paging
space per disk.  Tip: Put lots of RAM in your system - it will use it.

3. Why does vmstat show no free RAM pages?

AIX uses RAM as a possibly huge disk buffer.  If you read a file in the
morning, that file is read into RAM, and left there.  If no other
programs need that RAM, that file will be left in RAM until the machine
is halted.  This means that if you need the file again, access will be
quick.  If you need that RAM, the system will simply use the pages the
file were using. The pages were flushed back to disk earlier.  This
means that you can get a huge speedup in disk access if you have enough
RAM.  For example, a 200MB database will just ease into RAM if you have
a 256MB system.

4. Since vmstat shows no free RAM pages, am I out of RAM?

Probably not. Since disk files will be "mapped" into RAM, if vmstat
shows lots of RAM pages FREE, then you probably have too much RAM (not
usual on a RISC System/6000)!

5. Shouldn't the "avm" and the "fre" fields from vmstat add up to something?

No. The "avm" field tells you how much "Active Virtual Memory" AIX
thinks you are using. This will closely match the amount of paging
space you are using. This number has *ABSOLUTELY* nothing to do with
the amount of RAM you are using, and does *NOT* include your mapped
files (disk files).  The amount of RAM can be determined with
/usr/sbin/bootinfo -r

6. Why does the "fre" field from vmstat sometimes show lots of free
   RAM pages?

This will happen after an application that used a lot of RAM via
"working" storage (not NFS storage, and not disk file or "persistent"
storage) exits. When RAM pages that were used by working storage (a
program's stack and data area) are no longer needed, there is no need to
leave them around. AIX completely frees these RAM pages. The time to
access these pages versus a RAM page holding a "sync'd" mapped file is
almost identical. Therefore, there is no need to periodically "flush" RAM.

7. Is the vmstat "fre" field useful?

The vmstat "fre" field represents the number of free page frames.  If
the number is consistently small (less than 500 pages), this is normal. 
If the number is consistently large (greater than 4000 pages), then you
have more memory than you need in this machine.


1.301: How much should I trust the ps memory reports?
From: chukran@austin.VNET.IBM.COM

Using "ps vg" gives a per process tally of memory usage for each running
process.  Several fields give memory usage in different units, but these
numbers do not tell the whole story on where all the memory goes.

First of all, the man page for ps does not give an accurate description
of the memory related fields.  Here is a better description:

RSS - This tells how much RAM resident memory is currently being used
for the text and data segments for a particular process in units of
kilobytes.  (this value will always be a multiple of 4 since memory is
allocated in 4 KB pages).

%MEM - This is the fraction of RSS divided by the total size of RAM for
a particular process.  Since RSS is some subset of the total resident
memory usage for a process, the %MEM value will also be lower than actual.

TRS - This tells how much RAM resident memory is currently being used
for the text segment for a particular process in units of kilobytes. 
This will always be less than or equal to RSS.

SIZE - This tells how much paging space is allocated for this process
for the text and data segments in units of kilobytes.  If the executable
file is on a local filesystem, the page space usage for text is zero. 
If the executable is on an NFS filesystem, the page space usage will be
nonzero.  This number may be greater than RSS, or it may not, depending
on how much of the process is paged in.  The reason RSS can be larger is
that RSS counts text whereas SIZE does not.

TSIZ - This field is absolutely bogus because it is not a multiple of 4
and does not correlate to any of the other fields.

These fields only report on a process text and data segments.  Segment
size which cannot be interrogated at this time are:

       Text portion of shared libraries (segment 13)

       Files that are in use. Open files are cached in memory as
       individual segments.  The traditional kernel cache buffer
       scheme is not used in AIX 3.

       Shared data segments created with shmat.

       Kernel segments such as kernel segment 0, kernel extension
       segments, and virtual memory management segments.

Speaking of kernel segments, the %MEM and RSS report for process zero
are totally bogus for AIX 3.1.  The reason why RSS is so big is that the
kernel segment zero is counted twice.  For AIX 3.2, this has been
changed, but the whole story is still not known.  The RSS value for
process 0 will report a very small number of the swapper private data
segment.  It does not report the size of the kernel segment 0, where the
swapper code lives.

In summary, ps is not a very good tool to measure system memory usage. 
It can give you some idea where some of the memory goes, but it leaves
too many questions unanswered about the total usage.

______________________________________________________________________________
1.400: How do I make an informative prompt in the shell?

In the Korn Shell (ksh), the PS1 variable is expanded each time it is
printed, so you can use:

$ export myhost=`hostname`
$ PS1='$LOGNAME@$myhost $PWD \$ '

to get, e.g. 

bengsig@ieibm1 /u/bengsig $

In the C-shell, use:

% set myhost=`hostname`
% alias cd 'chdir \!* > /dev/null; set prompt="$LOGNAME@$myhost $cwd % "'
% cd

to get, e.g.

bengsig@dkunix9 /u/bengsig/aixfaq %

There is no easy solution in the Bourne Shell.  Use the Korn Shell instead.


1.401: How do I set up ksh for emacs mode command line editing?
From: scotte@cdsac.uucp (L. Scott Emmons)

The ksh has an undocumented way of binding the arrowkeys to the emacs
line editing commands. In your .kshrc, add:

alias __A=^P
alias __B=^N
alias __C=^F
alias __D=^B
alias __H=^A

Note that "^P" (et al) must be the actual control sequence.

Type "set -o emacs" or put this line in your .profile.

Also, you MUST have PTF U406855 for this to work in AIX 3.2.  The APAR #
for the problem is IX25982, which may have been superseded.


1.402: Listing files with ls causes a core dump
From: John F Haugh II

Scenario: a directory that is shared by N users (N >= 200).
Run 'ls -l' in that directory.  It goes for a while, then
Seg fault(coredump)!

It only occurs when the usernames are displayed (almost every file is
owned by a different person).  The -g and -n options work fine; only -l
and -o (which shows owner and not group) cause it. 

I believe that this problem was corrected by U407548.  If you have that
many users that you are having core dump problems (it took over 200),
you might also want to look into getting the PTF that fixes IX31403. 
That APAR deals with large numbers of accounts and performance problems
associated with looking them up.


1.403: How do I put my own text into InfoExplorer?

With AIX 3.1, you cannot do it.  AIX 3.2 has a product called
InfoCrafter that allows you to do that.


1.404: InfoExplorer ASCII key bindings 
From: mycroft@hal.gnu.ai.mit.edu (Charles Hannum)

If you just press 'Return' when it starts up, with 'Basic Screen
Operations' highlighted, you'll get some help.

If you look long enough, you'll find a page named 'Using Keys and Key
Sequences in the InfoExplorer ASCII Interface'.  It describes the key
sequences and actions.  Here are a few to get you started.

Keys       Action

Ctrl-W     Moves between the Navigation screen and the Reading screen.
If the Navigation screen is displayed, you can press Ctrl-W to display
the Reading screen.  If the Reading screen is displayed, you can press
Ctrl-W to display the Navigation screen.

Ctrl-O     Makes the menu bar active or inactive.  If your text cursor is
located in the text area of the screen, you can press Ctrl-O to make the
menu bar active.  If the menu bar is already active, you can press
Ctrl-O to make it inactive, which moves the text cursor to the text area.

Tab     Moves to the next menu bar option in the menu bar.  If a pull-down
menu is not displayed and you press the Right Arrow key, the next menu
bar option is displayed in reverse video.
 

1.405: How can I add new man pages to the system?
From: horst@faui63.informatik.uni-erlangen.de (Horst Luehrsen)

Put the man pages in /usr/man, e.g. /usr/man/man1/tcsh.1 for the tcsh
man page.  Unter AIX 3.1.10, /usr/lib/makewhatis can be used to update
the makewhatis-database /usr/man/whatis so apropos and whatis know about
the added manpages.  /usr/lib/makewhatis should be available on all 3.2
versions.


1.406: Why can't I read man pages?  Where is nroff?

Nroff and troff aren't in the base installation.  It is shipped as
part of AIX 3.2.5 but may not be installed.  Use smit to install a
software package called txtfmt.tfs.obj from your 3.2.5 distribution
media.

______________________________________________________________________________
1.500  Which release of X11 do I have?

Run 'lslpp -h X11rte.obj'.
If your output has a line similar to:

            01.02.0000.0000 COMPLETE   COMMIT     03/04/93   02:05:11 root

you have X11 R4. If your output has a line similar to:

    U491068 01.02.0003.0000 COMPLETE   COMMIT     07/28/93   12:50:42 root

you have X11 R5. Some people also call these AIXwindows 1.2.0 and 1.2.3.


1.501: How to prevent ctrl-alt-backspace from killing the X session

Start X with 'xinit -T' to disable ctrl-alt-backspace from stopping X.


1.502: Who has a termcap/terminfo source for the HFT console?

The console used on the RISC System/6000, PS/2 and RT can be used as a
terminal on another system with the termcap below.  You can find this
and other termcaps in /lib/libtermcap/termcap.src, including IBM
specific ones.  The terminfo sources are stored in /usr/lib/terminfo/*.ti.
This termcap can also be used from an aixterm window.

hf|hft|hft-c|ibm8512|ibm8513|IBM_High_Function_Terminal:\
	:co#80:li#25:am:ht:\
	:cm=\E[%i%d;%dH:ti=\E[25;1H:te=\E[20h:\
	:nd=\E[C:up=\E[A:do=^J:ho=\E[H:\
	:bs:sf=\E[S:ec=\E[%dX:\
	:cl=\E[H\E[J:cd=\E[J:ce=\E[K:\
	:AL=\E[%dL:DL=\E[%dM:al=\E[L:dl=\E[M:\
	:im=\E[4h:ei=\E[4l:mi:\
	:dm=\E[4h:ed=\E[4l:\
	:so=\E[7m:se=\E[m:ul=\E[4m:ue=\E[m:\
	:md=\E[1m:mr=\E[7m:mb=\E[5m:me=\E[m:\
	:as=^N:ae=^O:sc=\E[s:rc=\E[u:\
	:kl=\E[D:kb=^H:kr=\E[C:ku=\E[A:kd=\E[B:kh=\E[H:\
	:kn#10:k1=\E[001q:k2=\E[002q:k3=\E[003q:k4=\E[004q:k5=\E[005q:\
	:k6=\E[006q:k7=\E[007q:k8=\E[008q:k9=\E[009q:k0=\E[010q:\
	:is=\Eb\E[m^O\E[?7h:rs=\Eb\E[m^O\E[?7h\E[H\E[J:


1.503: How can I look at PostScript files?  Why is "dpsexec" so lousy?
From Marc Pawliger (marc@sti.com)

showps comes with the 1.2.3 (X11R5) version of the X11rte.ext.obj LPP.
Very nice PS file previewer from Adobe.  Replaces xpsview which came
with pre-1.2.3 Installed as /usr/lpp/DPS/showps/showps

From: VRBASS@ATLVMIC1 (Vance R. Bass)

You can look at PostScript files using either "xpreview" (in the
optionally installable text formatting services) or you can get
Ghostscript and Ghostview from a comp.sources.x server and build it
yourself.

>From the "xpreview" man page:
The xpreview command is an AIXwindows 1.2- and Motif 1.1-based
application that displays output from the troff command on an AIXwindows
display.  The troff command output file must be prepared for any one of
the devX100, devX100K or devpsc devices.  The xpreview command also
displays PostScript language files that begin with %!.

"dpsexec" is NOT intended to be a full-service document browser, but
rather a simple DPS code debugger.  If you insist on using it, you can
edit your PS code to remove the "showpage" (which will reset dpsexec
and clear the window) to view single-page files.  It does not handle
multi-page files gracefully.


1.504: unix:0 vs `hostname`:0

1.) Is there any way to get the machine to check its local host table
    first without renaming resolv.conf?

From: mcguire@selway.umt.edu (Charles J McGuire)

  Not that I know of.  Under SunOS and Ultrix you can specify, check
  /etc/hosts, then NIS, then DNS.  On our AIX machines, I have a cron job
  that checks the integrity of both the primary and secondary
  nameservers every 5 minutes.  If they're gone, cron renames
  resolv.conf.  It continues to check the servers.  When they're back,
  it moves resolv.conf back.  Even with this arrangement, I need to
  configure two resolv.conf files that switch the order of the primary
  and secondary servers if the primary goes away.  If the primary is
  unavailable, queries can still take a while to time out on the
  primary, before querying the secondary.  This method is not very
  elegant, but it does the job.  Things are a little unstable during the
  transitions depending on when the servers go away relative to when
  cron runs - not to mention slight differences in clock times.

2.) How do you tell X applications where you are if the console display 
    is unix:0?

From: crow@waterloo.austin.ibm.com (David L. Crow)

  I would suggest that if you have R5, use ":<display>.<screen>".  I do
  not believe that R4 clients will understand :0, so I would suggest
  unix:0 for them.

  Without specifying unix or the hostname, you will get the fastest
  transport mechanism.  While currently there are only two transport
  methods in the AIXwindows X server (Unix sockets and TCP sockets),
  many vendors are looking at using shared memory as a transport method. 
  If you use :0 (or :0.0 or :1, etc.), then you should get the best
  performance regardless of the available transport methods.

From Marc Pawliger (marc@sti.com)
  Using "unix:0" or "hostname:0" when the X11 Shared Memory Transport
(SMT) is installed as part of the 1.2.3 X11rte.obj (X11R5) will incur
a penalty vs. using ":0" See /usr/lpp/X11/README.SMT

3.) Is there a significant performance penalty incurred by using
    `hostname`:0 as DISPLAY?

  Yes! Using unix:0, you are using Unix sockets.  These are much faster
  than their TCP socket counterparts.


1.505: VT100 key bindings for aixterm
From: haedener@iac.unibe.ch (Konrad Haedener)

Add this to your .Xdefaults file and start your VAX session with
'aixterm -v -name vt100 -e telnet MYVAXHOST'

-----
vt100.foreground: Wheat
vt100.background: MidnightBlue
vt100.font: Rom14.500
vt100.geometry: 80x25+0+0
vt100.vt102: true
vt100.fullcursor: false
vt100.pointerColor: coral
vt100.cursorColor: gray100
vt100.translations:    <Key>F1: string(0x1b) string("OP") \n\
                       <Key>F2: string(0x1b) string("OQ") \n\
                       <Key>F3: string(0x1b) string("OR") \n\
                       <Key>F4: string(0x1b) string("OS") \n\
                       <Key>KP_0: string(0x1b) string("Op") \n\
                       <Key>KP_1: string(0x1b) string("Oq") \n\
                       <Key>KP_2: string(0x1b) string("Or") \n\
                       <Key>KP_3: string(0x1b) string("Os") \n\
                       <Key>KP_4: string(0x1b) string("Ot") \n\
                       <Key>KP_5: string(0x1b) string("Ou") \n\
                       <Key>KP_6: string(0x1b) string("Ov") \n\
                       <Key>KP_7: string(0x1b) string("Ow") \n\
                       <Key>KP_8: string(0x1b) string("Ox") \n\
                       <Key>KP_9: string(0x1b) string("Oy") \n\
                       <Key>KP_Divide: string(0x1b) string("OQ") \n\
                       <Key>KP_Multiply: string(0x1b) string("OR") \n\
                       <Key>KP_Subtract: string(0x1b) string("OS") \n\
                       <Key>KP_Add: string(0x1b) string("Om") \n\
                       <Key>KP_Enter: string(0x1b) string("OM") \n\
                       <Key>KP_Decimal: string(0x1b) string("On") \n\
                       <Key>Next: string(0x1b) string("Ol") \n\
                       <Key>Left: string(0x1b) string("OD") \n\
                       <Key>Up: string(0x1b) string("OA") \n\
                       <Key>Right: string(0x1b) string("OC") \n\
                       <Key>BackSpace : string(0x7f) \n\
                       <Key>Down: string(0x1b) string("OB")

You should also add

XENVIRONMENT=$HOME/.Xdefaults
export XENVIRONMENT

to your .profile.


1.506: Is there a screen saver that does not use excessive CPU?

From: buchholz@ese.ogi.edu (Don Buchholz)

Try using xlock with these options:

	xlock -mode life -count 1500 -nice 20 -root


From: pranav@evolving.com (Pranav Vakil)

Use mlock -hide to hide the background. You can also modify the mlock
(/usr/local/tools/mlock) code to allow the standard X screen saver to
take effect. The timeout value is originally set to 0 which means the
screen saver is off. Modify this to be 120 (2 minutes) and set the
interval time to be 60 (1 minute). Using these intervals, I have found
that over a 24 hour period, it uses only .3 cpu minutes.

1.507: Where are the colors, availible for an X session, listed.

/usr/lpp/x_st_mgr/bin/rgb.txt

______________________________________________________________________________
1.600: My named dies frequently, why?

Running on 3.2, named dies frequently on network's primary name server.

From: jpe@ee.egr.duke.edu (John P. Eisenmenger)

Try the following:

     stopsrc -s named		# stop running named
     setenv MALLOCTYPE 3.1	# use 3.1 memory allocation algorithm
     /etc/named ...		# don't use smit to start named

You might be able to use startsrc/smit after setting MALLOCTYPE and get
the same effect, but I'm not sure.

[According to John, the problem is malloc() in the named code. He
 also suggests using Berkeley's bind, which he has ported and can be
 ftp'ed from ftp.egr.duke.edu, /archives/network/bind-4.8.3.tar.Z. -ed]

Two ptfs should fix this problem. Get U412332 and U414752.

Christophe Wolfhugel <Christophe.Wolfhugel@grasp.insa-lyon.fr> reports
that bind 4.9 works fine on AIX 3.2 and without MALLOCTYPE=3.1.


1.601: How do I trace ethernet packets on an AIX system?
From: afx@muc.ibm.de (Andreas Siegert)

Do the following:

     iptrace -i en0 /tmp/ipt

The iptrace backgrounds.  Find its process id and kill it when you are
ready.  Then run

     ipreport -rns /tmp/ipt >/tmp/ipr

and look at the output.  The current version of Info does not document
the r, n and s options but they are quite useful for layering the output.


1.602 What is the authorized way of starting automount at boot time?
From: curt@ekhadafi.austin.ibm.com (Curt Finch)

I put this in my /etc/inittab:

automount:2:once:/usr/etc/automount -T -T -T -v >/tmp/au.se 2>&1

I hereby dub it authorized.


1.603: How do I set a tty port for both dial-in and dial-out?

Set the mode of the tty to be either 'shared' or 'delayed'. 


1.604: How to move or copy whole directory trees across a network

The following command will move an entire directory tree across a network 
while preserving permissions, uids and gids.

      $rsh RemoteHost "cd TargetDir; tar -cBf - ." | tar -xvBf -

Explanation:

The tar-create is rsh'd to the remote system and is written to
stdout (the pipe).

The local system is extracting the tar that is being read from
stdin (the pipe).


1.605: How can I send mail to hosts that cannot be pinged?
From: jupiter.sun.csd.unb.ca!dedourek (John DeDourek)

AIX 3.2 as shipped is configured to only send mail to mail addresses
which include a host name.  Many organizations use a mail address whose
"host name" part is not a host name (technically an MX name).  To change
the configuration of the AIX mailer, login as root.  Then edit the file
/etc/sendmail.cf to remove the comment marker ("# ") at the beginning of
the line which reads:
    # OK MX

Now rebuild the machine readable form of the configuration with
    sendmail -bz

and finally restart signal sendmail to load the new configuration by one
of the following:
     reboot
or
     stopsrc -s sendmail
     startsrc -s sendmail
or 
     kill -1 `cat /etc/sendmail.pid`


1.606: How to configure dialup SLIP
From: marvin@tornado.oche.de (Christian Bode)

If you don't have problems with slattach you should have PTF 
bos.obj 3.2.0.0.U411505 installed.  I assume that you did the right
ifconfig commands to setup your slip-device (for example sl0).

1. Create a group called slip.

2. Create a user slip with smit like this:
                                                     [Entry Fields]
* User NAME                                          [slip]
  ADMINISTRATIVE User?                                true
  User ID                                            []
  LOGIN user?                                         true
  PRIMARY group                                      [slip]
  Group SET                                          [slip]
  ADMINISTRATIVE groups                              [system]
  SU groups                                          [slip]
  HOME directory                                     [/home/slip]
  Initial PROGRAM                                    [/bin/sh]
  User INFORMATION                                   [SLIP-Dialup]
  Another user can SU to user?                        false
  User can RLOGIN?                                    true
  TRUSTED PATH?                                       nosak
  Valid TTYs                                         [/dev/tty1]
  AUDIT classes                                      []
  PRIMARY authentication method                      [SYSTEM]
  SECONDARY authentication method                    [NONE]
  Max FILE size                                      [2097151]
  Max CPU time                                       [-1]
  Max DATA segment                                   [262144]
  Max STACK size                                     [65536]
  Max CORE file size                                 [2048]
  Max physical MEMORY                                [65536]
  File creation UMASK                                [022]
  EXPIRATION date (MMDDhhmmyy)                       [0]

3. Create a tty with getty on it:
                                   Add a TTY
                                               [Entry Fields]
  TTY type                                     tty
  TTY interface                                rs232
  Description                                  Asynchronous Terminal
  Parent adapter                               sa0
* PORT number                                  [s1]
  BAUD rate                                    [38400]
  PARITY                                       [none]
  BITS per character                           [8]
  Number of STOP BITS                          [1]
  TERMINAL type                                [dumb]
  STATE to be configured at boot time          [available]
  DMA                                          on
  Read Trigger                                 0,1,2,3
  Transmit buffer count                        [16]
  Name of initial program to run               [/etc/getty]

  Note: The following attributes are only applicable if /etc/getty is
        specified as the initial program to run.

  Enable program?                              respawn
  Run level                                    2
  Enable LOGIN                                 share
  TIME before advancing to next port setting   [0]
  STTY attributes for RUN TIME                 [hupcl,cread,brkint>
  STTY attributes for LOGIN                    [hupcl,cread,echoe,>
  RUN shell activity manager                   no
  Optional LOGGER name                         []

4. Change the hardware characteristics so that it uses NO XON/XOFF handshake

5. Here is the the .profile for User slip to manage dialups

PATH=/usr/bin:/etc:/usr/sbin:/usr/ucb:$HOME/bin:/usr/bin/X11:/sbin:/usr/local/bin:.

ENV=$HOME/.kshrc
HISTSIZE=128

export PATH ENV HISTSIZE
#
# Search for a LCK-File for our tty if there is one
#

if test -f /etc/locks/LCK..tty1
then
  SHPID=`cat /etc/locks/LCK..tty1`
else
 echo `date` " No LCK-File !!!" >>slip.log
 exit 64
fi

#
# Search for our own Shell to get the PID for checking against LCK-File
#

SH2PID=`ps -aef |
        sed -n -e 's/^ *slip  *\([0-9][0-9]*\) .*-sh *$/\1/p`

#
# Is it the the same PID as in the LCK File so that we can start working ??
#

if test $SHPID = $SH2PID
then
#  remove the LCK-File because slattach does not like it.
   rm -rf /etc/locks/LCK..tty1
#  Add RTS/CTS Handshakeing to our own tty
   stty add rts
#  Startup slattach. Slattach has to have mode 4755 to be started up !!!
   /usr/sbin/slattach tty1
#  Just say that we are up.
   echo `date` " Starting up slip-daemon " >>slip.log
#  leave slattach enough time to startup
   sleep 4
else
# Something must be wrong with the LCK-File
  SH3PID=`ps -aef | awk ' {print $2}' | grep $SHPID`

  if test ."$SH3PID" = .""
  then
    SH3PID="NO_SUCH_PROCESS"
  fi

  if test $SHPID = $SH3PID
    then
#  There is a living process which owns the LCK-File !!
       echo `date` " Can't remove LCK-File, not owner !!!" >>slip.log
       exit 64
    else
#   Who the hell didn't remove the LCK-File (should never happen)
       echo `date` " LCK-File with no owner found !!!" >>slip.log
       exit 64
    fi
fi

# Get the pid of slattch so that we can kill him later on.
SLPID=`ps -aef |
 sed -n -e 's/^ *slip  *\([0-9][0-9]*\) .*-.*\/usr\/sbin\/slattach tty1 *$/\1/p`

# Kill slattach if we get a signal 1 (Carrier Lost ? / Otherside-slattach
  terminated )
trap "kill $SLPID; exit 0" 1

# We  will have a nice sleep and nice dreamings
while sleep 256
do
:
done

Here's another scenario:
From: oosten@angelo.ee.ualberta.ca (Brian Oostenbrink)

Operating System: IBM AIX 3.2.1 and 3.2.3

Configuring two RS6000s via a Serial Line Interface Protocol (SLIP) 
connection over two US Robotics Sportster 14,400 modems.

The AIX implementation of SLIP is slightly different from most others. 
The ifconfig command is used to bring up a serial interface, and the
slattach command is used to connect the interface to the serial port
used for the connection.  Dialer device commands can also be issued when
invoking the slattach command, using UUCP chat syntax.

The following describes a connection between two machines:

     local.j.k.l
         ethernet IP address 129.128.127.21
         slip interface IP address 129.1.2.1

     remote.a.b.c
         ethernet IP address 129.11.22.44
         slip interface address 129.11.22.1

1. Interface configuration

Each machine must have a separate IP address dedicated to the SLIP
interface. On remote.j.k.l, start the SLIP interface with:

         ifconfig sl0 129.11.22.1 129.128.127.1  up

and on local.a.b.c:

         ifconfig sl0 129.128.127.1 129.11.22.1  up

It is important in later versions of AIX 3.2.3+ to use the same SLIP
interface # as the ptty port #, ie. if you use tty12, use ifconfig sl12
instead of sl0.

At this point the interfaces are ready to be connected.

2. tty configuration
   The tty ports on both machines were configured in an identical manner
   using smit.
                                                 [Entry Fields]
 TTY type                                           tty
 TTY interface                                      rs232
 Description                                        Asynchronous Terminal
 Parent adapter                                     sa0
 PORT number                                        []                       +
 BAUD rate                                          [38400]                  +
 PARITY                                             [none]                   +
 BITS per character                                 [8]                      +
 Number of STOP BITS                                [1]                      +
 TERMINAL type                                      [dumb]
 STATE to be configured at boot time                [available]              +
 DMA                                                on                       +
 Read Trigger                                       0,1,2,3
 Transmit buffer count                              [16]                      #
 Name of initial program to run                     [etc/getty]

 Note: The following attributes are only applicable if /etc/getty is specified
 as the initial program to run.

 Enable program?                                    respawn
 Run level                                          2
 Enable LOGIN                                       disable                  +
 TIME before advancing to next port setting         [0]                      +#
 STTY attributes for RUN TIME                       [hupcl,cread,brkint,icr>
 STTY attributes for LOGIN                          [hupcl,cread,echoe,cs8,>
 RUN shell activity manager                         no                       +
 Optional LOGGER name                               []

On older versions of AIX, we encountered some problems disabling getty, and
resorted to changing the /etc/inittab file directly. For example, change

   tty0:2:respawn:/etc/getty /dev/tty0
to
   tty0:2:off:/etc/getty /dev/tty0

This will disable getty from running. After creating the SLIP tty device,
you will need to change its hardware configuration to disable Xon/Xoff
flow control. Software flow control should not be used for SLIP. Type
'smit chtty', and then select sub item 2: Hardware settings.

Most of the parameters in the tty configuration are the defaults.

3. Modem Configuration

   The modems were configured as follows:

   RTS/CTS flow control enabled.
   Xon/Xoff software flow control disabled. Usually this is automatic if
      RTS/CTS is enabled.
   Data rate, terminal to modem = fixed.
      This is the baud rate from the tty port to the modem. We used a
      fixed modem-port transfer rate, set to the fastest speed supported
      by both the tty port and the modem. Newer modems can use a higher
      transfer rate between the modem and serial port than the modem to
      modem rate, which is necessary to use data compression effectively.  
      In our setup, we used 14.4 kBaud modems with a port speed of 38.4
      kBaud. If your modem supports this feature, use it, otherwise set
      the port speed equal to the modem connection rate. On the USR
      Sportster at&b1 fixes the serial port rate to that of the last
      AT command. The speed parameter of the slattach command can be
      used to ensure that this rate is that set in the tty configuration.
   Error Correction enabled - not mandatory, but a good idea
   Data Compression - not required, but it helps, especially for text
      transfers.
   Auto Answer - If the SLIP connection is to be initiated from either
      machine, both modems should be set to auto answer, otherwise, just
      the answering modem.

   It is a good idea to configure the modem and then save the settings
   to NVRAM, so that the correct settings can always be restored by the
   slattach command.

4. UUCP configuration files

   /usr/lib/uucp/Devices
   /usr/lib/uucp/Dialers

   The Devices file must contain an entry with the tty and serial port
   speed used for the interface. In our example,
      Direct tty0 38400 slipdialer

   The keyword 'slipdialer' is merely an index into the Dialers file.
   For our purposes, the slipdialer entry in the Dialers file is simply:

      slipdialer

   This entry can also contain UUCP chat commands, or the chat commands
   can be included in the slattach command.

5. slattach invocation

   slattach connects the device on the tty port to the SLIP interface
   created by ifconfig, and sends any commands to the tty device if
   needed. For our example, remote.j.k.l would never initiate a call,
   only answer incoming calls. Therefore we execute:

         slattach tty0 38400 '"" ATZ OK ""'

   which connects the tty at 38400 baud. We could also simply run

         slattach tty0

   ie. without any modem commands, but the modem to port speed may not
   be correctly set this way. In addition, the ATZ command ensures the
   modem is set to the NVRAM settings.

   On local.a.b.c type:

         slattach tty0 38400 '"" ATZ OK \pATDT4925871 BIS ""' 4

   This establishes the link at 38400 baud, and executes the dial string
   as shown. The dial string is a UUCP chat string and are configured
   in an expect send expect send ... format. The string:

         '"" ATZ OK \pATDT4925871 BIS ""'

   is interpreted as:
   expect "" (null string) from modem
   send   ATZ              to modem
   expect OK               from modem
   send   \pATDT4925871    to modem
   expect BIS              from modem

   BIS is the end of the CONNECT STRING. You could use any portion of
   the string returned by the modem upon a connection as the expect
   string. It may be wiser to simply expect CONNECT since all
   connections should return this string.
   The null strings are necessary because the first parameter of the
   UUCP is an expected string from the modem, which can only be a null
   string until the modem has been given a command.

   The last parameter (4) of the slattach command is the debug level. 
   A debug level of 4 displays the UUCP chat strings, which is useful
   for checking the modem status.

6. Routing
   ifconfig is sufficient if all you want to do is talk between the
   two hosts.  If you are running SLIP so that you can talk to more
   than just that one other host you have to advertise your address.
   
   1) arp -s 802.5 iago 10:00:5a:b1:49:d8 pub
        where 802.5 is a token-ring network the hardware address can
        be obtained with `netstat -v` and iago was the SLIP client (My
        PC at home :)  pub is the important part it means "published"
        You may want to run this at boot time. 

   Routing through the SLIP link is similiar to routing of any gateway. 
   Invoking the ifconfig command automatically sets up a route between
   the two SLIP machines. An entry in /etc/hosts or the named database
   should be made, with the same machine name used for the SLIP address
   as the ethernet address on each machine. For example, in /etc/hosts
   on remote.a.b.c (and any other machine on remote.a.b.c ethernet):

     129.11.22.44 remote.a.b.c # ethernet address
     129.11.22.1  remote.a.b.c # slip address

   It is preferable to place the ethernet address in the hosts file
   before the SLIP address so remote.a.b.c will resolve to the
   ethernet address. When using named, it is important to have both
   addresses in the reverse file with the same name. We experienced
   difficulties with NFS mounting over the slip link, owing to some
   machine interpreting NFS requests from one of the two SLIP machines
   as coming from the SLIP address, while the SLIP machine believed it
   was sending the request from the ethernet address. This problem was
   eliminated by having both addresses reverse resolve to the same name.

7. Performance
   At a modem speed of 14.4 kBaud and a port speed of 38.4 kBaud, we
   realized a transfer rate through ftp of about 3.5 kB/s for text
   files, and 1.3 kB/s for compressed files.


1.607: Where is DCE discussed?
From: brent@uwovax.uwo.ca (Brent Sterner)

DCE is the Distributed Computing Environment, which is roughly a
flexible client-server architecture for heterogenous platforms.
For more information, take a look in comp.unix.osf.misc. 


1.608: How do I make /var/spool/mail mountable?
From: petersen@pi1.physik.uni-stuttgart.de (Joerg Petersen)

In our cluster we share a /usr/local disk. We have a directory
/usr/local/spool/mail and /var/spool/mail is soft-linked to it.

From: fred@hal6000.thp.Uni-Duisburg.DE (Fred Hucht)

Several problems has been reported on sharing the mail directory via
NFS. The problems may occur when two or more sendmail daemons and/or
mail readers access a user's mail file simultanously, because of NFS'
file locking mechanism.

We use another method here: Every user has one line in his/her
$HOME/.forward file that reads

xxx@mainserver.domain.name

where xxx is the user node and mainserver.domain.name is the full
hostname of one of the machines. Then all incoming mail to all machines
is forwarded to mainserver, while mainserver ignores this line.


1.609: getty spawning too rapidly 
thanks to aslam@abaseen.lums.edu.pk (Sohail Aslam)

The problem can occur due a number of modem settings. The most
frequent is that the echo is not disabled on modems that are to
accept incoming calls. In hayes language, ATE0 disables echo.
If echo is enabled, the login prompt sent by the DTE (computer)
is echoed back to it. It then issues "password:" prompt which
the modem conveniently echoes back again. And the cycle goes on.

Another setting to check is the Q registers which controls the
modem's response to the DTE. The hayes command ATQ0 enables
results codes. The Q register in conjunction with the X and
the V registers, reports back to the DTE the status of the incoming
or outgoing call, and the type of connection established. For
outgoing calls, one would want to enable result codes but not
for incoming calls. If codes are enabled (via ATQ0), when a
call comes in, the modem will send strings (if ATV1 and ATX4 set)
"RINGING", "CONNECTED" etc. to the local DTE. The getty will think
some one is trying to login. It will send password prompt. Trouble
again. Telebit and other intelligent modems has ATQ2 setting
which says "reports codes only when calling out." For others,
you will need to disable it (ATQ1) and enable when calling out.

The DSR setting can be a source of problem. Ideally, modem should
raise DSR only when CD is detected and modem raises CTS. Computer,
such as the VAX, wait 30 seconds after the modem raises DSR. If
CD is not on by that time, the computer will drop DTR causing the
modem to reset. The DSR should be set to be raised only when
carrier has been detected. The hayes setting is AT&S1.

The DCD setting should be such that it reflects the true nature of
the carrier. The CD can be forced on at all times (AT&C0). This
is not good. Set it to AT&C1.

Most modems can reload saved settings from non-volatile memory
on a DTR transition. This is useful for resetting the modem
when a call drops. Use AT&D3 to get this effect. 

For dial in, thus, set AT E0 Q1 &C1 &D3 &S1 &W. The &W stores the
settings in memory. They will be reloaded due to &D3.


1.610: Does AIX support Compressed SLIP (CSLIP)?

No.  That means no VJ compression either :)  See PPP in section 5.07 
if you want more than standard SLIP.


1.611: How do I setup anonymous ftp on my AIX system?
(stolen from Peter Klee <klee@dhdibm1.bitnet> posting)

Have a look at '/usr/lpp/tcpip/samples/anon.ftp'. It is a shell script
and will set up a anonymous ftp site on your local RS/6000.

______________________________________________________________________________
1.900: SCSI-1 and SCSI-2 "interoperability" got you confused?
From: drr

A.  SCSI-1 devices are supported on a SCSI-2 adapter.  This
    config will provide SCSI-1 performance.

B.  SCSI-2 devices are supported on a SCSI-1 adapter.  This
    config will provide SCSI-1 performance.

C.  A mix of SCSI-2 and SCSI-1 devices are supported on a SCSI-1
    adapter.  All devices will have SCSI-1 performance.

D.  A mix of SCSI-2 and SCSI-1 devices are supported on a SCSI-2
    adapter.  SCSI-2 devices will have SCSI-2 performance (10 MB/sec)
    and SCSI-1 devices will have SCSI-1 performance (4-5 MB/sec).


1.901: How to get your keyboard back after unplugging it from the 6000
From: Mickey Coggins and Anne Serre

When you unplug your keyboard from a running system, and plug it back
in, the key mapping is wrong.  For example, keys like Caps Lock and Ctrl
don't work as designed.

Solution: Type at the command line

        /usr/lpp/diagnostics/da/dkbd

Your screen goes black, you hear a few beeps, and your keyboard is reset.
It works with any environment, Xwindows, hft, NLS...

For Models 220, 230 and M20, use the following commands:

/usr/lpp/diagnostics/da/dkbd
/usr/lpp/diagnostics/da/dkbdsal   (for the 220)


1.902: How do I set up pcsim, the DOS emulator?

You must have a bootable DOS diskette to install pcsim. Either DOS 3.3, 
4.x, or 5.0 will work. IBM do not officially support DOS 5.0 for pcsim
but I have no problems with it. Just don't try to be fancy with the UMB 
and memory manager stuff.

With a bootable DOS disk in the drive, do:
$touch /u/dosdrive (this is the AIX file for DOS emulation)
$pcsim -Adiskette 3 -Cdrive /u/dosdrive
You would now get an A prompt. Type:
A> fdisk
Create the virtual C drive of whatever size you choose. Make it large 
enough for your needs since you cannot enlarge it later.
A> format c: /s (to format the virtual C drive)
Now exit from pcsim with ESCpcsim (Esc key followed by pcsim).

Now create a simprof file. Following is a starter:

Adiskette   : 3
Cdrive      :/u/dosdrive
lpt1        : name of printer queue
refresh     : 50
dmode       : V
mouse       : com1

You can now start pcsim anytime by typing pcsim. Make sure no floppies
are in the drive. For further information, refer to publication
SC23-2452, Personal Computer Simulator/6000 Guide and Reference.
       

1.903: How do I transfer files between AIX and DOS disks?

In one of the bos extensions are commands for transferring files between
DOS diskettes and AIX. The commands are dosread, doswrite, dosdir, dosdel,
and dosformat. Many users have mentioned that the mtools package from
prep.ai.mit.edu is better than the native AIX programs.

_____________________________________________________________________________
2.00: C/C++

Contrary to many people's belief, the C environment on the RS/6000 is
not very special.  The C compiler has quite a number of options that can
be used to control how it works, which "dialect" of C it compiles, how
it interprets certain language constructs, etc.  InfoExplorer includes a
Users Guide and a Reference Manual.

The compiler can be invoked with either xlc for strict ANSI mode and cc
for RT compatible mode (i.e. IBM 6150 with AIX 2).  The default options
for each mode are set in the /etc/xlc.cfg file, and you can actually add
another stanza and create a link to the /bin/xlc executable.

The file /usr/lpp/xlc/bin/README.xlc has information about the C
compiler, and the file /usr/lpp/bos/bsdport contains useful information,
in particular for users from a BSD background.

The file /etc/xlc.cfg also shows the symbol _IBMR2 that is predefined,
and therefore can be used for #ifdef'ing RS/6000 specific code.


2.01: I cannot make alloca work

A famous routine, in particular in GNU context, is the allocation
routine alloca().  Alloca allocates memory in such a way that it is
automatically free'd when the block is exited.  Most implementations
does this by adjusting the stack pointer.  Since not all C environments
can support it, its use is discouraged, but it is included in the xlc
compiler.  In order to make the compiler aware that you intend to use
alloca, you must put the line

#pragma alloca

before any other statements in the C source module(s) where alloca is
called.  If you don't do this, xlc will not recognize alloca as anything
special, and you will get errors during linking.

For AIX 3.2, it may be easier to use the -ma flag.


2.02: How do I compile my BSD programs?

The file /usr/lpp/bos/bsdport contains information on how to port
programs written for BSD to AIX 3.1.  This file may be very useful for
others as well.

A quick cc command for most "standard" BSD programs is:
  
  $ cc -D_BSD -D_BSD_INCLUDES  -o [loadfile] [sourcefile.c] -lbsd

If your software has system calls predefined with no prototype
parameters, also use the -D_NO_PROTO flag.


Path: bloom-beacon.mit.edu!grapevine.lcs.mit.edu!uhog.mit.edu!MathWorks.Com!yeshua.marcam.com!zip.eecs.umich.edu!newsxfer.itd.umich.edu!uunet!newsserver.amsinc.com!162.70.244.20!jwarring
From: jwarring@flaixy.amsinc.com (Jeff Warrington)
Newsgroups: comp.unix.aix,comp.answers,news.answers
Subject: AIX Frequently Asked Questions (Part 3 of 3)
Supersedes: <3032@flAIXy.fd.amsinc.com>
Followup-To: comp.unix.aix
Date: 12 Aug 1994 21:13:48 GMT
Organization: American Management Systems, Inc.
Lines: 1714
Approved: news-answers-request@MIT.EDU
Distribution: world
Expires: 30 Sep 94 01:23:45 GMT
Message-ID: <3042@flAIXy.fd.amsinc.com>
Reply-To: jwarring@flAIXy.fd.amsinc.com
NNTP-Posting-Host: flaixy.fd.amsinc.com
Summary: This posting contains a list of Frequently Asked Questions 
         and their answers about AIX, IBM's version of Unix.
Keywords: AIX RS/6000 questions answers
Xref: bloom-beacon.mit.edu comp.unix.aix:30382 comp.answers:6742 news.answers:23914

Archive-name: aix-faq/part3
Last-modified: Aug 12, 1994
Version: 3.40


Version: $Id$

Frequently Asked Questions to AIX 3.x and IBM RS/6000
_____________________________________________________

2.03: Isn't the linker different from what I am used to?

Yes.  It is not at all like what you are used to:

- The order of objects and libraries is normally _not_ important.  The
  linker reads _all_ objects including those from libraries into memory
  and does the actual linking in one go.  Even if you need to put a
  library of your own twice on the ld command line on other systems, it
  is not needed on the RS/6000 - doing so will even make your linking slower.

- One of the features of the linker is that it will replace an object in
  an executable with a new version of the same object:

  $ cc -o prog prog1.o prog2.o prog3.o		# make prog
  $ cc -c prog2.c				# recompile prog2.c
  $ cc -o prog.new prog2.o prog			# make prog.new from prog
						# by replacing prog2.o
  
- The standard C library /lib/libc.a is linked shared, which means that
  the actual code is not linked into your program, but is loaded only
  once and linked dynamically during loading of your program.

- The ld program actually calls the binder in /usr/lib/bind, and you can
  give ld special options to get details about the invocation of the
  binder.  These are found on the ld man page or in InfoExplorer.

- If your program normally links using a number of libraries (.a files),
  you can 'prelink' each of these into an object, which will make your
  final linking faster.  E.g. do:

  $ cc -c prog1.c prog2.c prog3.c
  $ ar cv libprog.a prog1.o prog2.o prog3.o
  $ ld -r -o libprog.o libprog.a
  $ cc -o someprog someprog.c libprog.o

This will solve all internal references between prog1.o, prog2.o and
prog3.o and save this in libprog.o Then using libprog.o to link your
program instead of libprog.a will increase linking speed, and even if
someprog.c only uses, say prog1.o and prog2.o, only those two modules
will be in your final program.  This is also due to the fact that the
binder can handle single objects inside one object module as noted above.

If you are using an -lprog option (for libprog.a) above, and still want
to be able to do so, you should name the prelinked object with a
standard library name, e.g. libprogP.a (P identifying a prelinked
object), that can be specified by -lprogP.  You cannot use the archiver
(ar) on such an object.

You should also have a look at section 3.01 of this article, in
particular if you have mixed Fortran/C programs.

Dave Dennerline (dad@adonis.az05.bull.com) claims that his experiences
in prelinking on AIX does not save much time since most people have
separate libraries which do not have many dependencies between them,
thus not many symbols to resolve.


2.04: How do I link my program with a non-shared /lib/libc.a?

  cc -o prog -bnoso -bI:/lib/syscalls.exp obj1.o obj2.o obj3.o

will do that for a program consisting of the three objects obj1.o, etc.

From: Marc Pawliger (marc@sti.com)

As of AIX 3.2.5, you can install a speedup for AIXwindows called
Shared Memory Transport.  To static link an X application after the
SMT PTF has been installed, you must link with
-bI:/usr/lpp/X11/bin/smt.exp and the executable will NOT run on a
machine where SMT is not installed.  See /usr/lpp/X11/README.SMT

2.05: How do I make my own shared library?

To make your own shared object or library of shared objects, you should
know that a shared object cannot have undefined symbols.  Thus, if your
code uses any externals from /lib/libc.a, the latter MUST be linked with
your code to make a shared object.  Mike Heath (mike@pencom.com) said it
is possible to split code into more than one shared object when externals
in one object refer to another one.  You must be very good at
import/export files.  Perhaps he or someone can provide an example. 

Assume you have one file, sub1.c, containing a routine with no external
references, and another one, sub2.c, calling stuff in /lib/libc.a.  You
will also need two export files, sub1.exp, sub2.exp.  Read the example
below together with the examples on the ld man page. 

---- sub1.c ----
    int addint(int a, int b)
    {
      return a + b;
    }
---- sub2.c ----
    #include <stdio.h>

    void printint(int a)
    {
      printf("The integer is: %d\n", a);
    }
---- sub1.exp ----
    #!
    addint
---- sub2.exp ----
    #!
    printint
---- usesub.c ----
    main()
    {
      printint( addint(5,8) );
    }

The following commands will build your libshr.a, and compile/link the
program usesub to use it.  Note that you need the ld option -lc for
sub2shr.o since it calls printf from /lib/libc.a.

  $ cc  -c sub1.c
  $ ld -o sub1shr.o sub1.o -bE:sub1.exp -bM:SRE -T512 -H512 
  $ cc  -c sub2.c
  $ ld -o sub2shr.o sub2.o -bE:sub2.exp -bM:SRE -T512 -H512  -lc
  $ ar r libshr.a sub1shr.o sub2shr.o
  $ cc -o usesub usesub.c -L: libshr.a
  $ usesub
  The integer is: 13
  $


2.06: Linking my program fails with strange errors.  Why?

Very simple, the linker (actually called the binder), cannot get the
memory it needs, either because your ulimits are too low or because you
don't have sufficient paging space.  Since the linker is quite different
>from normal Unix linkers and actually does much more than these, it also
uses a lot of virtual memory.  It is not unusual to need 10000 pages (of
4k) or more to execute a fairly complex linking.

If you get 'BUMP error', either ulimits or paging is too low, if you get
'Binder killed by signal 9' your paging is too low.

First, check your memory and data ulimits; in korn shell 'ulimit -a' will
show all limits and 'ulimit -m 99999' and 'ulimit -d 99999' will
increase the maximum memory and data respectively to some high values. 
If this was not your problem, you don't have enough paging space.

If you will or can not increase your paging space, you could try this:

- Do you duplicate libraries on the ld command line? That is never
  necessary.

- Do more users link simultaneously? Try having only one linking going
  on at any time.

- Do a partwise linking, i.e. you link some objects/libraries with the
  -r option to allow the temporary output to have unresolved references,
  then link with the rest of your objects/libraries.  This can be split
  up as much as you want, and will make each step use less virtual memory.

  If you follow this scheme, only adding one object or archive at a
  time, you will actually emulate the behavior of other Unix linkers.

If you decide to add more paging space, you should consider adding a new
paging space on a second hard disk, as opposed to just increasing the
existing one.  Doing the latter could make you run out of free space on
your first harddisk. It is more involved to shrink a paging space
but easier to delete one.


2.07: What's with malloc()?
 
malloc() uses a late allocation algorithm based on 4.3 BSD's malloc()
for speed.  This lets you allocate very large sparse memory spaces,
since the pages are not actually allocated until they are touched for
the first time.  Unfortunately, it doesn't die gracefully in the face of
loss of available memory.  See the "Paging Space Overview" under
InfoExplorer, and see the notes on the linker in this document for an
example of an ungraceful death.

If you want your program to get notified when running out of memory, you
should handle the SIGDANGER signal.  The default is to ignore it. 
SIGDANGER is sent to all processes when paging space gets low, and if
paging space gets even lower, processes with the highest paging space
usage are sent the SIGKILL signal.

malloc() is substantially different in 3.2, allocating memory more
tightly.  If you have problems running re-compiled programs on 3.2,
try running them with MALLOCTYPE=3.1.

Early Page Space Allocation (EPSA) added to AIX 3.2: see
/usr/lpp/bos/README.PSALLOC - IX38211 / U422496 Allows setting of
early allocation (vs. default late allocation) on a per-process basis.

2.08: Why does xlc complain about 'extern char *strcpy()'

The header <string.h> has a strcpy macro that expands strcpy(x,y) to
__strcpy(x,y), and the latter is then used by the compiler to generate
inline code for strcpy.  Because of the macro, your extern declaration
contains an invalid macro expansion.  The real cure is to remove your
extern declaration but adding -U__STR__ to your xlc will also do the trick.


2.09: Why do I get 'Parameter list cannot contain fewer ....'

This is the same as above.


2.10: Why does xlc complain about '(sometype *)somepointer = something'

Software that is developed using gcc may have this construct. However,
standard C does not permit casts to be lvalues, so you will need to
change the cast and move it to the right side of the assignment. If you
compile with 'cc', removing the cast completely will give you a warning,
'xlc' will give you an error (provided somepointer and something are of
different types - but else, why would the cast be there in the first place?)


2.11: Some more common errors

Here are a few other common errors with xlc:

305 |     switch((((np)->navigation_type) ? (*((np)->navigation_type)) :
      ((void *)0)))
      .a...........  
a - 1506-226: (S) The second and third operands of the conditional
operator must be of the same type.

The reason for this is that xlc defines NULL as (void *)0, and it does
not allow two different types as the second and third operand of ?:. 
The second argument above is not a pointer and the code used NULL
incorrectly as a scalar. NULL is a nil pointer constant in ANSI C and
in some traditional compilers.

You should change NULL in the third argument above to an integer 0.


2.12: Can the compiler generate assembler code?

Starting with version 1.3 of xlc and xlf the -S option will generate a
.s assembly code file prior to optimization. The option -qlist will
generate a human readable one in a .lst file.

There is also a disassembler in /usr/lpp/xlc/bin/dis include with the
1.3 version of xlc (and in /usr/lpp/xlC/bin/dis with the 2.1 version
of xlC) that will disassemble existing object or executable files.


2.13: Curses

Curses based applications should be linked with -lcurses and _not_ with
-ltermlib. It has also been reported that some problems with curses are
avoided if your application is compiled with -DNLS.

Peter Jeffe <peter@ski.austin.ibm.com> also notes:

>the escape sequences for cursor and function keys are *sometimes*
>treated as several characters: eg. the getch() - call does not return
>KEY_UP but 'ESC [ C.'

You're correct in your analysis: this has to do with the timing of the
escape sequence as it arrives from the net. There is an environment
variable called ESCDELAY that can change the fudge factor used to decide
when an escape is just an escape. The default value is 500; boosting
this a bit should solve your problems.

Christopher Carlyle O'Callaghan <asdfjkl@wam.umd.edu> has more comments
concerning extended curses:

1) The sample program in User Interface Programming Concepts, page 7-13
   is WRONG. Here is the correct use of panes and panels.

#include <cur01.h>
#include <cur05.h>

main()
{
PANE *A, *B, *C, *D, *E, *F, *G, *H;
PANEL *P;

initscr();

A = ecbpns (24, 79, NULL, NULL, 0, 2500, Pdivszp, Pbordry, NULL, NULL);
D = ecbpns (24, 79, NULL, NULL, 0, 0,    Pdivszf, Pbordry, NULL, NULL);
E = ecbpns (24, 79, D,    NULL, 0, 0,    Pdivszf, Pbordry, NULL, NULL);
B = ecbpns (24, 79, A, D, Pdivtyh, 3000, Pdivszp, Pbordry, NULL, NULL);
F = ecbpns (24, 79, NULL, NULL, 0, 0,    Pdivszf, Pbordry, NULL, NULL);
G = ecbpns (24, 79, F,    NULL, 0, 5000, Pdivszp, Pbordry, NULL, NULL);
H = ecbpns (24, 79, G,    NULL, 0, 3000, Pdivszp, Pbordry, NULL, NULL);
C = ecbpns (24, 79, B, F, Pdivtyh, 0, Pdivszf, Pbordry, NULL, NULL);
P = ecbpls (24, 79, 0, 0, "MAIN PANEL", Pdivtyv, Pbordry, A);

ecdvpl (P);
ecdfpl (P, FALSE);
ecshpl (P); 
ecrfpl (P);
endwin();
}

2) DO NOT include <curses.h> and any other <cur0x.h> file together.
   You will get a bunch of redefined statements.

3) There is CURSES and EXTENDED CURSES. Use only one or the other. If the
   manual says that they're backwards compatible or some other indication 
   that you can use CURSES routines with EXTENDED, don't believe it. To 
   use CURSES you need to include <curses.h> and you can't (see above).

4) If you use -lcur and -lcurses in the same link command, you will get
   Memory fault (core dump) error. You CANNOT use both of them at the same
   time. -lcur is for extended curses, -lcurses is for regular curses.

5) When creating PANEs, when you supply a value (other than 0) for the
   'ds' parameter and use Pdivszf value for the 'du' parameter, the 'ds'
   will be ignored (the sample program on page 7-13 in User Interface
   Programming Concepts is wrong.) For reasons as yet undetermined,
   Pdivszc doesn't seem to work (or at least I can't figure out how to
   use it.)

6) If you're running into bugs and can't figure out what is happening,
   try the following:
   include -qextchk -g in your compile line
	-qextchk will check to make sure you're passing the right number of
  	 parameters to the functions
	-g enables debug

7) Do not use 80 as the number of columns if you want to use the whole
   screen. The lower right corner will get erased.  Use 79 instead.

8) If you create a panel, you must create at least 1 pane, otherwise you
   will get a Memory fault (core dump).

9) When creating a panel, if you don't have a border around it, any title
   you want will not show up.

10) to make the screen scroll down:
    wmove (win, 0, 0);
    winsertln (win)

11) delwin(win) doesn't work in EXTENDED WINDOWS

    To make it appear as if a window is deleted, you need to do the following:
    for every window that you want to appear on the screen
	touchwin(win)
	wrefresh(win)

    you must make sure that you do it in the exact same order as you put
    them on the screen (i.e., if you called newwin with A, then C, then B,
    then you must do the loop with A, then C, then B, otherwise you won't
    get the same screen back).  The best thing to do is to put them into
    an array and keep track of the last window index.

12) mvwin(win, line, col) implies that it is only used for viewports and
    subwindows. It can also be used for the actual windows themselves.

13) If you specify the attribute of a window using wcolorout(win), any
    subsequent calls to chgat(numchars, mode) or any of its relatives
    will not work. (or at least they get very picky.)


2.14: How do I speed up linking

Please refer to sections 2.03 and 2.06 above.

From: losecco@undpdk.hep.nd.edu (John LoSecco) and
      hook@chaco.aix.dfw.ibm.com (Gary R. Hook)

>From oahu.cern.ch in /pub/aix3 you can get a wrapper for the existing
linker called tld which can reduce link times with large libraries by
factors of 3 to 4.


2.15: What is deadbeef?

When running the debugger (dbx), you may have wondered what the
'deadbeef' is you occasionally see in registers.  Do note, that
0xdeadbeef is a hexadecimal number that also happens to be some kind
of word (the RS/6000 was built in Texas!), and this hexadecimal number
is simply put into unused registers at some time, probably during
program startup.


2.16: How do I statically link in 3.2?

xlc -bnso -bI:/lib/syscalls.exp -liconv -bnodelcsect 


2.17: How do I make an export list from a library archive?
From: dad@adonis.az05.bull.com (Dave Dennerline)

This script will only extract the "export"able names and should be
useful in starting the shared library creation process. The user must
determine which names should be included in the import and export lists.
It's only been tested on a few library archives.

#!/bin/ksh
#
# mkexps - make export list
# This program creates an export list by combining all the "." and normal names
# into one list. 
#
if [[ "$#" -ne 1 ]]
then
    print "Usage: mkexps ArchiveFile"
    exit -2
fi
if [[ ! -f $1 ]] 
then
    print "mkexps: Cannot open file \"$1\""
    exit -1
fi
dump -g $1 | awk '
BEGIN {
        top = 1
}    
/^[ ]*[0-9][0-9]*/ {
    if ( (n = index( $2, "." )) > 0 ) {
        export_array[ top++ ] = substr( $2, n+1, length( $2 ))
    }
    else {
	export_array[ top++ ] = $2
    }
}

END {
    for ( i = 1; i < top; i++ )
    {
	print export_array[ i ]
    }

}' | sort | uniq


2.18 Building imake, makedepend
From: crow@austin.ibm.com (David L. Crow)

    You need X11dev.src release 1.2.3.0 (ie the R5 release).  
     Unless you have an R5 release of AIXwindows, there is no xmkmf.
  These are the steps that I use to make imake, makedepend and all
  of it's config files, and then install them in the working tree
  (ie not the Xamples) for daily use:
  
      cd /usr/lpp/X11/Xamples
      make Makefile
      make SUBDIRS="config util" Makefiles
      make SUBDIRS="config util" linklibs
      make SUBDIRS="config util" depend
      make SUBDIRS="config util" 
      make SUBDIRS="config util" install
      
  Then redo the steps everytime you apply an X11 update.


2.19: How can tell what shared libraries a binary is linked with?

Use "dump -H <execfilename>" and see if anything other than /unix is
listed in the loader section (at the bottom).  The first example is
/bin/sh (statically linked) and the second example is
/usr/local/bin/bash (shared).

INDEX  PATH                          BASE                MEMBER              
0      /usr/lib:/lib                                                         
1      /                             unix                                    

INDEX  PATH                          BASE                MEMBER              
0      ./lib/readline/:./lib/glob/:/usr/lib:/lib               
1                                    libc.a              shr.o               
2                                    libcurses.a         shr.o               

_____________________________________________________
3.00: Fortran and other compilers

This section covers all compilers other than C/C++.  On Fortran, there
seem to have been some problems with floating point handling, in
particular floating exceptions.


3.01: I have problems mixing Fortran and C code, why?

A few routines (such as getenv, signal, and system) exist in both the
Fortran and C libraries but with different parameters. In the recent
past, if you have a mixed program that calls getenv from both C and
Fortran code, you have to link them carefully by specifying the correct
library first on your command line. This is no longer needed starting
with version 1.5 of the compilers.


3.02: How do I statically bind Fortran libraries and dynamically
      bind C libraries?
From: amaranth@vela.acs.oakland.edu (Paul Amaranth)

[ Editor's note: Part of this is also discussed above under the C compiler
  section, but I felt it was so valuable that I have left it all in. 
  I've done some minor editing, mostly typographical. ]

The linker and binder are rather versatile programs, but it is not
always clear how to make them do what you want them to.  In particular,
there are times when you do not want to use shared libraries, but
rather, staticly bind the required routines into your object.  Or, you
may need to use two versions of the same routine (eg, Fortran & C).  Here
are the results of my recent experiments.  I would like to thank Daniel
Premer and Brad Hollowbush, my SE, for hints.  Any mistakes or omissions
are my own and I have tended to interchange the terms "linker" and
"binder".  These experiments were performed on AIX 3.1.2.  Most of this
should be applicable to later upgrades of 3.1.

1)  I have some C programs, I want to bind in the runtime routines.  How
    do I do this? [Mentioned in section 2.04 of this article as well, ed.]

    You can put the -bnso binder command on the link line.  You should
    also include the -bI:/lib/syscalls.exp control argument:
      
      $ cc *.o -bnso -bI:/lib/syscalls.exp -o foo

    This will magically do everything you need.  Note that this will bind
    _all_ required routines in.  The -bI argument tells the linker that
    these entry points will be resolved dynamically at runtime (these are
    system calls).  If you omit this you will get lots of unresolved 
    reference messages.

2)  I want to statically bind in the Fortran runtime so a) my customers 
    do not need to buy it and b) I don't have to worry about the runtime
    changing on a new release.  Can I use the two binder arguments in
    1) to do this?

    You should be able to do so, but, at least under 3002, if you do
    you will get a linker error referencing getenv.  In addition, there
    are a number of potential conflicts between Fortran and C routines.
    The easy way just does not work.  See the section on
    2 stage linking for C and Fortran on how to do this.  The getenv
    problem is a mess, see the section on Comments & Caveats for more.

3)  I have a mixture of C and Fortran routines, how can I make sure
    that the C routines reference the C getenv, while the Fortran routines
    reference the Fortran getenv (which has different parameters and, if
    called mistakenly by a C routine results in a segmentation fault)?

    From Mike Heath (mike@pencom.com):

    Use -brename:symbol1,symbol2 when pre-linking the modules from one
    of the languages. It does not matter which one you choose.

4)  I have C and Fortran routines.  I want to bind in the xlf library, while
    letting the rest of the libraries be shared.  How do I do this?

    You need to do a 2 stage link.  In the first stage, you bind in the
    xlf library routines, creating an intermediate object file.  The
    second stage resolves the remaining references to the shared libraries.

    This is a general technique that allows you to bind in specific system
    routines, while still referencing the standard shared libraries.

    Specifically, use this command to bind the xlf libraries to the Fortran
    objects:

       $ ld -bh:4 -T512 -H512 <your objects> -o intermediat.o \
         -bnso -bI:/lib/syscalls.exp -berok -lxlf -bexport:/usr/lib/libg.exp \
         -lg -bexport:<your export file>

    The argument -bexport:<your export file> specifies a file with the
    name of all entry points that are to be visible outside the intermediate 
    module.  Put one entrypoint name on a line.  The -bI:/lib/libg.exp line 
    is required for proper functioning of the program.  The -berok argument 
    tells the binder that it is ok to have unresolved references, at least 
    at this time (you would think -r would work here, but it doesn't seem to).  
    The -bnso argument causes the required modules to be imported
    into the object.  The -lxlf, of course, is the xlf library.

    Then, bind the intermediate object with the other shared libraries in
    the normal fashion:

       $ ld -bh:4 -T512 -H512 <C or other modules> intermediate.o \
         /lib/crt0.o -lm -lc

    Note the absence of -berok.  After this link, all references should
    be resolved (unless you're doing a multistage link and making another
    intermediate).

    NOTE THE ORDER OF MODULES.  This is extremely important if, for example,
    you had a subroutine named "load" in your Fortran stuff.  Putting the
    C libraries before the intermediate module would make the C "load"
    the operable definition, rather than the Fortran version EVEN THOUGH 
    THE FORTRAN MODULE HAS ALREADY BEEN THROUGH A LINK AND ALL REFERENCES 
    TO THE SYMBOL ARE CONTAINED IN THE FORTRAN MODULE.  This can
    be extremely difficult to find (trust me on this one :-)  Is this
    a bug, a feature, or what?
    
    [As mentioned in section 2.03 of this article, it is a feature that you
    can replace individual objects in linked files, ed.]

    The result will be a slightly larger object than normal.  (I say slightly
    because mine went up 5%, but then it's a 2 MB object :-)


Comments & Caveats:

   From the documentation the -r argument to the linker should do what
   -berok does.  It does not.  Very strange results come from using the
   -r argument.  I have not been able to make -r work in a sensible manner
   (even for intermediate links which is what it is supposed to be for).

       Note from Mike Heath (mike@pencom.com):

       'ld -r' is essentially shorthand for 'ld -berok -bnogc -bnoglink'.
       Certainly, using -berok with an export file (so garbage collection
       can be done) is preferable to ld -r, but the latter is easier.

   When binding an intermediate module, use an export file to define the
   entry points you want visible in the later link.  If you don't do this,
   you'll get the dreaded "unresolved reference" error.  Import files name
   entry points that will be dynamically resolved (and possibly where).

   If you are in doubt about what parameters or libraries to link, use the
   -v arg when linking and modify the exec call that shows up into 
   an ld command.  Some thought about the libraries will usually yield an
   idea of when to use what.  If you don't know what an argument is for,
   leave it in.  It's there for a purpose (even if you don't understand it).

   Watch the order of external definitions (ie, libraries) when more than
   one version of a routine may show up, eg "load".  The first one defined
   on the ld command line is the winner.  

   The getenv (and system and signal) problem is a problem that started out
   minor, got somewhat worse in 3003 and, eventually will be correctly fixed.
   Basically, you should extract the 3002 version of these three routines
   from xlf.a before doing the update and save them away, then link these
   routines in if you use these Fortran system services.  


3.03: How do I check if a number is NaN?
From: sdl@glasnost.austin.ibm.com (Stephen Linam)

NaN is "Not a Number".  It arises because the RISC System/6000 uses
IEEE floating point arithmetic.

To determine if a variable is a NaN you can make use of the property
that a NaN does not compare equal to anything, including itself.
Thus, for real variable X, use

	IF (X .NE. X) THEN	! this will be true if X is NaN

Floating point operations which cause exceptions (such as an overflow)
cause status bits to be set in the Floating Point Status and Control
Register (FPSCR).  There is a Fortran interface to query the FPSCR, and
it is described in the XLF Fortran manuals -- I don't have the manuals
right here, but look for FPGETS and FPSETS.

The IBM manual "Risc System/6000 Hardware Technical Reference - General
Information" (SA23-2643) describes what floating point exceptions can
occur and which bits are set in the FPSCR as a result of those exceptions.


3.04: Some info sources on IEEE floating point

1. ANSI/IEEE STD 754-1985 (IEEE Standard for Binary Floating-Point
   Arithmetic) and ANSI/IEEE STD 854-1987 (IEEE Standard for
   Radix-Independent Floating-Point Arithmetic), both available from IEEE. 

2. David Goldberg, "What Every Computer Scientist Should Know About
   Floating-Point Arithmetic", ACM Computing Surveys, Vol. 23, No. 1,
   March 1991, pp. 5-48.

____________________________________________________________________________
4.00: GNU and Public Domain software

GNU software comes from the Free Software Foundation and various other
sources. A number of ftp sites archive them. Read the GNU license for 
rules on distributing their software.

Lots of useful public domain software have been and continue to be ported
to the RS/6000. See below for ftp or download information.


4.01: How do I find sources?
From: jik@GZA.COM (Jonathan Kamens)

There is a newsgroup devoted to posting about how to get a certain
source.  One is strongly urged to follow the guidelines in the article
How_to_find_sources(READ_THIS_BEFORE_POSTING), available via anonymous
ftp from rtfm.mit.edu

/pub/usenet/comp.sources.wanted/H_t_f_s_(R_T_B_P)

Note: You should try to use hostnames rather than ip addresses since
they are much less likely to change.

Also available from mail-server@rtfm.mit.edu by sending a mail
message containing:

send usenet/comp.sources.wanted/H_t_f_s_(R_T_B_P)

Send a message containing "help" to get general information about the
mail server.

If you don't find what you were looking for by following these
guidelines, you can post a message to comp.sources.wanted.


4.02: Are there any ftp sites?

Below are some ftp sites that are supposed to have RS/6000 specific
software.  I haven't verified all the entries.

US sites:
aixpdslib.seas.ucla.edu	    128.97.2.211	pub
acd.ucar.edu                128.117.32.1 	pub/AIX         
acsc.acsc.com               143.127.0.2		pub
byron.u.washington.edu      128.95.48.32	pub/aix/RS6000 (older stuff)
lightning.gatech.edu        128.61.10.8		pub/aix
tesla.ee.cornell.edu        128.84.253.11	pub

European sites:
nic.funet.fi                128.214.6.100	pub/unix/AIX/RS6000
iacrs1.unibe.ch             130.92.11.3		pub
files1zrz.zrz.TU-Berlin.DE  130.149.4.50	pub/aix
ftp-aix.polytechnique.fr    129.104.3.60	pub/binaries/rios
ftp.uni-stuttgart.de        129.69.8.13         sw/rs_aix32/

The first one is dedicated to software running on AIX.  It might not
always be the latest versions of the software, but it has been ported to
AIX (normally AIX version 3 only).  Once connected, you should retrieve
the files README and pub/ls-lR.

Please use the European sites very sparingly.  They are primarily to
serve people in Europe and most of the software can be found in the US
sites originally.

Host cac.toronto.ibm.com
    Location: marketing-info

>From David Edelsohn (c1dje@watson.ibm.com):
Host aixpdslib.seas.ucla.edu
    Location: ?                   #AIX archive (sources and binaries)
Host ftp.egr.duke.edu
    Location: ?                   #AIX archive
Host straylight.acs.ncsu.edu
    Location: ?                   #AIX archive
Host alpha.gnu.ai.mit.edu
    Location: /rs6000		  #AIX archive

>From Frank E. Doss (csfed@ux1.cts.eiu.edu):
Host iacrs2.unibe.ch
    Location: /pub/aix            #bunch of goodies)
Host ftp.u.washington.edu
    Location: /pub/RS6000         #minimal -- ted)
Host aixive.unb.ca
    Location: ?                   #just announced -- new archive)
Host ftp.ans.net
    Location: /pub/misc           #wais goodies)
Host uvaarpa.virginia.edu
    Location: /pub/misc           #minimal -- whois)
Host ux1.cts.eiu.edu
    Location: /pub/rs6000         #minimal -- pop3, FAQ, whois)

>From Robert MacKinnon (robmack@bsc.no):
Host ftp.bsc.no
    Location: pub/Src.


Sites with directories named 'aix':

Host aix1.segi.ulg.ac.be   (139.165.32.13)
    Location: /pub/aix

Host byron.u.washington.edu   (128.95.48.32)
   Location: /pub/aix

Host cunixf.cc.columbia.edu   (128.59.40.130)
    Location: /aix

Host files1zrz.zrz.tu-berlin.de   (130.149.4.50)
    Location: /pub/aix

Host ftp.rz.uni-augsburg.de   (137.250.113.20)
    Location: /pub/aix

Host fyvie.cs.wisc.edu   (128.105.8.18)
    Location: /pub/aix

Host solaria.cc.gatech.edu   (130.207.7.245)
    Location: /pub/incoming/aix
    Location: /pub/aix

Host spot.colorado.edu   (128.138.129.2)
    Location: /aix
    Location: /pub/patches/aix

Host swdsrv.edvz.univie.ac.at   (131.130.1.4)
    Location: /unix/systems/aix

Host switek.uni-muenster.de   (128.176.120.210)
    Location: /pub/aix

Host wuarchive.wustl.edu   (128.252.135.4)
    Location: /systems/aix


Sites with directories named 'AIX':

Host cs.nyu.edu   (128.122.140.24)
    Location: /pub/AIX

Host karazm.math.uh.edu   (129.7.128.1)
    Location: /pub/AIX

Host minnie.zdv.uni-mainz.de   (134.93.178.128)
    Location: /pub0/pub/AIX

Host oersted.ltf.dth.dk   (129.142.66.16)
    Location: /pub/AIX

Host rs3.hrz.th-darmstadt.de   (130.83.55.75)
    Location: /pub/incoming/AIX


Sites with directories named 'rs6000':

Host aeneas.mit.edu   (18.71.0.38)
    Location: /pub/rs6000

Host cameron.egr.duke.edu   (128.109.156.10)
    Location: /rs6000

Host ifi.informatik.uni-stuttgart.de   (129.69.211.1)
    Location: /pub/rs6000

Host metropolis.super.org   (192.31.192.4)
    Location: /pub/rs6000

Host ramses.cs.cornell.edu   (128.84.218.75)
    Location: /pub/rs6000

Host server.uga.edu   (128.192.1.9)
    Location: /pub/rs6000

Host unidata.ucar.edu   (128.117.140.3)
    Location: /pub/bin/rs6000

Host uvaarpa.virginia.edu   (128.143.2.7)
    Location: /pub/rs6000

Host wayback.cs.cornell.edu   (128.84.254.7)
    Location: /pub/rs6000


Sites with directories named 'RS6000':

Host alice.fmi.uni-passau.de   (132.231.1.180)
    Location: /pub/RS6000

Host byron.u.washington.edu   (128.95.48.32)
    Location: /pub/aix/RS6000

Host milton.u.washington.edu   (128.95.136.1)
    Location: /pub/RS6000

Host pascal.math.yale.edu   (128.36.23.1)
    Location: /pub/RS6000

Host uxc.cso.uiuc.edu   (128.174.5.50)
    Location: /pub/RS6000


4.03: General hints

In general, curses based applications should be linked with -lcurses and
_not_ with -ltermlib.  It has also been reported that compiling with
-DNLS helps curses based programs.

Note that the RS/6000 has two install programs, one with System V flavor
in the default PATH (/etc/install with links from /usr/bin and /usr/usg),
and one with BSD behavior in /usr/ucb/install.

When adding new shells to the system, add them to the "shells=" line
in /etc/security/login.cfg so they can be used during ftp and rlogin
by users who use them as their default shell.


4.04: GNU Emacs

Version 18.57 of GNU Emacs started to have RS/6000 support.  Use
s-aix3-2.h for AIX 3.2. Emacs is going through rapid changes recently.
Current release is 19.x.

Emacs will core-dump if it is stripped, so don't strip when you install
it.  You can edit a copy of the Makefile in src replacing all 'install -s' 
with /usr/ucb/install.


4.05: gcc/gdb

GNU C version 2.0 and later supports the RS/6000, and compiles straight
out of the box.  You may, however, experience that compiling it requires
large amounts of paging space.

Compiling gcc and gdb requires a patch to the 'as' assembler.  Call
IBM software support and request patch for apar IX26107 (U409205).

gcc has undergone many changes lately and the current version is 2.5.x.
gdb is at 4.1x.

If your machine crashed when trying to run gdb 4.7, call software support
and request ptf U412815.


4.06: GNU Ghostscript

The PostScript interpreter GNU Ghostscript Version 2.3 and later supports
the RS/6000 and can be found on various ftp sites. Current version is 2.6.1.

Compile idict.c and zstack.c _without_ optimization, add the following
to the Makefile:

idict.o: idict.c
        $(CC) -c idict.c

zstack.o: zstack.c
        $(CC) -c zstack.c


4.07: TeX

TeX can be retrieved via ftp from ftp.uni-stuttgart.de.
Be sure to use a recent C compiler (01.02.0000.0013) and you can compile
with optimization.


4.08: perl

Current version is 4.035 and compiling with cc should give no problems. 
If you use bsdcc, do not use perl's builtin malloc(), edit config.H to
'#define HAS_SYMLINK', and you should be on your way.  Bill Wohler tells
me that perl will run without editing config.H and with cc as well.  So
just say no to use perl's malloc().

Doug Sewell <DOUG@YSUB.YSU.EDU> adds:

In addition to not using the perl-provided malloc, when asked if you
want to edit config.sh, change 'cppstdin' from the wrapper-program
to '/lib/cpp'.

The perl wrapper name is compiled into perl, and requires that you keep
that file in the source directory, even if you blow away the rest of
the source.  /lib/cpp will do the job by itself.  I suspect this will
be fixed in perl 4.0pl11 Configure script.

Also, beware if you have gdbm installed per the instructions in the FAQ.
Gdbm is compiled with bsdcc; perl (as I installed it, anyway) was built
with cc, so I used the IBM-provided ndbm routines.


4.09: X-Windows

IBM has two releases of 3.2.3. The base version has X11R4 and Motif 1.1
and the extended version has X11R5 as AIXwindows 1.2.3.

AIXwindows version 1.2.0 (X11rte 1.2.0) is X11R4 with Motif 1.1
AIXwindows version 1.2.3 (X11rte 1.2.3) is X11R5 with Motif 1.1
X11rte.motif1.2 1.2.3 is Motif 1.2 and requires AIXwindows 1.2.3


4.10: bash

Bash is ported and has some patches on prep.ai.mit.edu. The current
version is 1.13.x and seems to work fine.


4.11: Elm

A very nice replacement for mail. Elm should be pretty straightforward,
the only thing to remember is to link with -lcurses as the only
curses/termlib library. You may also run into the problem listed under
point 2.13 above.


4.12: Oberon 2.2

From: afx@muc.ibm.de (Andreas Siegert)

Oberon is Wirth's follow on to Modula-2, but is not compatible. A free
version of Modula-3 is available from DEC/Olivetti at
gatekeeper.dec.com. This is not a Modula-2 replacement but a new
language. There are currently two M2 compilers for the 6000 that I know
of. One from Edinburgh Portable Compilers, +44 31 225 6262 (UK) and the
other from Gardens Point compiler +41 65 520311 (Switzerland).

Oberon can be obtained via anonymous ftp from neptune.inf.ethz.ch
(129.132.101.33) under the directory Oberon/RS6000 or gatekeeper.dec.com
(16.1.0.2).


4.13: Kermit

Get it from watsun.cc.columbia.edu (128.59.39.2), kermit/bin/cku189.tar.Z.
Uncompress, untar, and "make rs6000", and it works.


4.14: Gnu dbm
From: doug@cc.ysu.edu (Doug Sewell)

Here's the fixes for RS/6000's:

apply this to testgdbm.c:
158c158
<   char opt;
---
>   int opt;
166c166
<   while ((opt = getopt (argc, argv, "rn")) != -1)
---
>   while ((opt = getopt (argc, argv, "rn")) != EOF)

Apply this to systems.h:
111a112,114
> #ifdef RS6000
> #pragma alloca
> #else
112a116
> #endif

To compile, edit the Makefile.  Set CC to bsdcc (see /usr/lpp/bos/bsdport
if you don't have 'bsdcc' on your system) and set CFLAGS to -DRS6000 and
whatever options (-g, -O) you prefer.  Don't define SYSV.


4.15: tcsh
From: cordes@athos.cs.ua.edu (David Cordes)

tcsh is available from tesla.ee.cornell.edu (pub/tcsh-6.00 directory)
Compiles with no problems. You must edit /etc/security/login.cfg to
permit users to change to this shell (chsh), adding the path where the
shell is installed (in my case, /usr/local/bin/tcsh).

From: "A. Bryan Curnutt" <bryan@Stoner.COM>

Under AIX 3.2.5, you need to modify the "config.h" file, changing
    #define BSDSIGS
to
    #undef BSDSIGS


4.16: Kyoto Common Lisp

The sources are available from cli.com. The kcl package is the needed
base; also retrieve the latest akcl distribution. akcl provides a
front-end that "ports" the original kcl to a number of different
platforms. The port to the 6000 worked with no problems. However, you
must be root for make to work properly with some memory protection
routines.


4.17: Tcl/Tk

Current versions: Tcl 7.3, Tk 3.6. Available from sprite.berkeley.edu or
harbor.ecn.purdue.edu.


4.18: Expect
From: Doug Sewell <DOUG@YSUB.YSU.EDU>
   
To build the command-interpreter version, you must have the tcl library
built successfully. The expect library doesn't require tcl.  Note:
Expect and its library are built with bsdcc, so applications using
the library probably also need to be developed with bsdcc.

I ftp'd expect from ftp.cme.nist.gov.

You need to change several lines in the makefile.  First you need
to customize source and target directories and files:
#
TCLHDIR = /usr/include
TCLLIB = -ltcl
MANDIR = /usr/man/manl               (local man-pages)
MANEXT = l
BINDIR = /u/local/bin
LIBDIR = /usr/lib
HDIR = /usr/include
...
Next set the compiler, switches, and configuration options:
#
CC = bsdcc
CFLAGS = -O
...
PTY_TYPE = bsd
...
INTERACT_TYPE = select
...
Then you need to make these changes about line 90 or so:
comment out CFLAGS = $(CLFLAGS)
un-comment these lines:
CFLAGS = $(CLFLAGS) $(CPPFLAGS)
LFLAGS = ($CLFLAGS)

Then run 'make'.

You can't run some of the examples without modification (host name,
etc).  I don't remember if I ran all of them or not, but I ran enough
that I was satisfied it worked.


4.19: Public domain software on CD
From: mbeckman@mbeckman.mbeckman.com (Mel Beckman)

The Prime Time Freeware CD collection is a package of two CD's and docs
containing over THREE GIGABYTES of compressed Unix software. It costs $69
>from Prime Time Freeware, 415-112 N. Mary Ave., Suite 50, Sunnyvale, CA
94086. Phone 408-738-4832 voice, 408-738-2050 fax. No internet orders as
far as I can tell.

I've extracted and compiled a number of the packages, and all have worked
flawlessly so far on my 220. Everything from programming languages to 3D
solid modeling is in this bonanza!

Ed: The O'Reilly book, Unix Power Tools, also contains a CD-ROM with lots
of useful programs compiled for the RS/6000, among other platforms.


4.20: Andrew Toolkit

From: Gary Keim <gk5g+@andrew.cmu.edu>

The Andrew Toolkit Consortium of Carnegie Mellon University's School of
Computer Science has released new versions of the Andrew User
Environment, Andrew Toolkit, and Andrew Message System.

The Andrew User Environment (AUE) is an integrated set of applications
beginning with a 'generic object' editor, ez, a help system, a system
monitoring tool (console), an editor-based shell interface (typescript),
and support for printing multi-media documents. 

The Andrew Toolkit (ATK) is a portable user-interface toolkit that runs
under X11. It provides a dynamically-loadable object-oriented
environment wherein objects can be embedded in one another. Thus, one
could edit text that, in addition to containing multiple fonts, contains
embedded raster images, spreadsheets, drawing editors, equations, simple
animations, etc. These embedded objects can also be nested.

The Andrew Message System (AMS) provides a multi-media interface to mail
and bulletin-boards. AMS supports several mail management strategies
and implements many advanced features including authentication, return
receipts, automatic sorting of mail, vote collection and tabulation,
enclosures, audit trails of related messages, and subscription
management. It has interfaces that support ttys, personal computers, 
and workstations.

Release 5.1 of Andrew contains many bug fixes and updates. There is now
support for the new Internet MIME (Multipurpose Internet Mail Extensions)
standards for multipart, and multimedia mail. For more information on
MIME, please see the CHANGES files in the ftp directory on
emsworth.andrew.cmu.edu.

This release can be obtained as follows. The sources are available via
anonymous ftp from export.lcs.mit.edu (18.30.0.238) in the
./contrib/andrew tree. For details, see ./contrib/andrew/README.

PATCH for AIX3.2: A patch to the AUIS 5.1 sources can be ftp'ed from
emsworth.andrew.cmu.edu (128.2.45.40) in ./aixpatch. For those without
internet access, a 3.5" diskette can be ordered for a nominal fee of $10
by sending, or faxing, a purchase order to the Consortium address below.

Andrew, as well as a variety of other CMU software, can also be ftp'ed
>from emsworth.andrew.cmu.edu (128.2.30.62). Those with AFS access look
at /afs/andrew.cmu.edu/itc/sm/releases/X.V11R5/ftp.

Remote Andrew Demo Service 

This network service allows you to run Andrew Toolkit applications
without obtaining or compiling the Andrew software. You need a host
machine running X11 on the Internet. A simple "finger" command will let
you experience ATK applications firsthand. You'll be able to compose
multimedia documents, navigate through the interactive Andrew Tour, and
use the Andrew Message System to browse through CMU's three thousand
bulletin boards and newsgroups.

To use the Remote Andrew Demo service, run the following command:

    finger help@atk.itc.cmu.edu 

The service will give you further instructions.

Information Sources

Your bug reports are welcome; kindly send them to
info-andrew-bugs@andrew.cmu.edu and we will periodically post a status
report to the mailing list info-andrew@andrew.cmu.edu. To be added to
the mailing list or make other requests, send mail to
info-andrew-request@andrew.cmu.edu.

We also distribute the following related materials:

ATK and AMS sources and binaries on CDROM. Binaries are available
for the following system types: 

        	IBM RiscSystem/6000 
		Sun SparcStation 
		HP 700 Series 
		DECstation 

ATK and AMS sources on QIC and Iotamat tapes Hardcopies of the
documentation for ATK and AMS. Introductory video tape: Welcome to
Andrew: An Overview of the Andrew System. Technical video tape: The
Andrew Project: A Session at the Winter 1988 Usenix Conference.

More information about these materials is available from:

    Information Requests
    Andrew Toolkit Consortium
    Carnegie Mellon University
    4910 Forbes Avenue, UCC 214
    Pittsburgh, PA 15213-3890
    USA
    phone: +1-412-268-6710
    fax: +1-412-621-8081
    info-andrew-request@andrew.cmu.edu

There is also a netnews distribution list, comp.soft-sys.andrew, which
is identical to the info-andrew list except that it does not support the
multi-media capabilities of info-andrew.


4.21: sudo

Allows processes to assume other uids. Version 1.1 (most recent) can be
obtained from csn.org:/pub/sudo and comprehends AIX.


4.22: Flexfax and other fax software
From: robmack@bsc.no (Rob MacKinnon)

sgi.com:/sgi/fax to get FlexFax v2.2.1. It supports many types of Class
1/2 fax modems and several UNIX systems including AIX 3.2.3 or greater. 
There is also a fax modem review document at the same site as
sgi.com:/pub/fax/bakeoff. The FlexFax related files on sgi.com are
replicated on ftp.bsc.no as well.

Note: FlexFax 2.4.3 can be ftp'ed from ftp.ee.lbl.gov but I don't know
if that's an upgrade from the SGI version.

From: michael@hal6000.thp.Uni-Duisburg.DE (Michael Staats)

We're using mgetty+sendfax for the basic modem I/O, I wrote a printer
backend for the modem so that users can send faxes as easy as they print
postscript. I also wrote a little X interface composer to generate a
fax form that makes sending faxes very easy. You can find these
programs at hal6000.thp.Uni-Duisburg.DE under /pub/source.

program				comment

mgetty+sendfax-0.14.tar.gz	basic modem I/O, needs hacking for AIX
X11/xform-1.1.tar.gz	     	small and simple X interface composer
				with an example fax form. Needs
				libxview.a incl. headers.
faxiobe.tar.gz			fax backend, needs configuring for
				your local site

If you need a binary version of libxview.a and the headers you'll find
them under /pub/binaries/AIX-3-2/lxview.tar.gz.


4.23: lsof
From: abe@vic.cc.purdue.edu (Vic Abell)

Q. How can I determine the files that a process has opened?
Q. How can I locate the process that is using a specific network address?
Q. How can I locate the processes that have files open on a file system?

A. Use lsof (LiSt Open Files).

Lsof is available via anonymous ftp from vic.cc.purdue.edu
(128.210.15.16) in pub/lsofVVVtar.Z where VVV is the version number,
currently 229.


4.24: popper

The POP server is available via anonymous ftp from ftp.CC.Berkeley.EDU
(128.32.136.9, 128.32.206.12).  It is in two files in the pub directory:
a compressed tar file popper-version.tar.Z and a Macintosh StuffIt archive
in BinHex format called MacPOP.sit.hqx.


4.26: mpeg link errors version 2.0
posted by (Nathan Lane) nathan@seldon.foundation.tricon.com 

.XShmCreateImage
.XShmDetach
.XShmAttach
.XShmGetEventBase
.XShmPutImage
.XShmQueryExtension

... are for the Shared Memory extension of the X server.
You can either choose to build it with shared memory or without.  I
always do it without  the performance increase is not really
incredible, except on something like a 2x0 machine with the local bus
graphics adapter.  Just take out "DSH_MEM" in the CFLAGS in the
makefile for mpeg_play.  OR, build your Xserver with shared memory
(the instructions are in /usr/lpp/X11/samples/README, I believe.)

Also, in the module "video.c" for mpeg_play it will complain about not
having enough memory to fully optimize one of the loops.  You can get
around that by specificying "qmaxmem=8000" in your cflags line, BUT,
the extra optimization does little good in my tests.


______________________________________________________________________________
5.00: Third party products

[ Ed.: Entries in this section are edited to prevent them from looking
  like advertising. Prices given may be obsolete. Companies mentioned
  are for reference only and are not endorsed in any fashion. ]


5.02: Disk/Tape/SCSI
From: anonymous

- Most SCSI disk drives work (IBM resells Maxtor, tested Wren 6&7 myself);
  use osdisk when configuring (other SCSI disk).

- Exabyte: Unfortunately only the ones IBM sells are working.
  A few other tape drives will work; 
  use ostape when configuring (other SCSI tape).

- STK 3480 "Summit": Works with Microcode Version 5.2b


From: bell@hops.larc.nasa.gov (John Bell)
               
In summary, third party tape drives work fine with the RS/6000 unless 
you want to boot from them. This is because IBM drives have 'extended 
tape marks', which IBM claims are needed because the standard marks 
between files stored on the 8mm tape are unreliable. These extended 
marks are used when building boot tapes, so when the RS/6000 boots, it 
searches for an IBM tape drive and refuses to boot without it.

From: jrogers@wang.com (John Rogers)

On booting with non-IBM SCSI tape drives: I haven't tried it myself but
someone offered:

Turn machine on with key in secure position.
Wait until LED shows 200 and 8mm tape has stopped loading.
Turn key to service position.


From: amelcuk@gibbs.clarku.edu (Andrew Mel'cuk)

The IBM DAT is cheap and works.  If you get all the patches beforehand
(U407435, U410140) and remember to buy special "Media Recognition
System" tapes (Maxell, available from APS 800.443.4461 or IBM #21F8758)
the drive can even be a pleasure to use.  You can also flip a DIP switch
on the drive to enable using any computer grade DAT tapes (read the
hardware service manual).

Other DAT drives also work.  I have tried the Archive Python (works) and
experimented extensively with the Archive TurboDAT.  The TurboDAT is a
very fast compression unit, is not finicky with tapes and doesn't
require the many patches that the IBM 7206 does.  Works fine with the
base AIX 3.2 'ost' driver.


From: pack@acd.ucar.edu (Daniel Packman)

>>You can boot off of several different brands of non-IBM Exabytes.
>>At least TTI and Contemporary Cybernetics have done rather complete
>>jobs of emulating genuine IBM products.

A model that has worked for us from early AIX 3.1 through 3.2 is a TTI
CTS 8210.  This is the old low density drive.  The newer 8510 is dual
density (2.2gig and 5gig).  Twelve dip switches on the back control the
SCSI address and set up the emulation mode.  These drives have a very
useful set of lights for read-outs (eg, soft error rate, tape remaining,
tape motion, etc.).


5.03: Memory

I got a flyer from Nordisk Computer Services (Portland 503-598-0111, 
Seattle 206-242-7777).  Some sample prices:

      16 MB Upgrade Kit   $  990
      32 MB Upgrade Kit   $1,700
      64 MB Upgrade Kit   $3,300

5xx machines have 8 memory slots, 3x0s have 2, and 3x5s have only one.
You need to add memory in pairs for the 5xx machines.

Models 220, 230 and 250 can use "PS/2" style SIMM memory.  All have 8
SIMM sockets.  60ns or better is needed for the 250, 70ns should be OK
in the 220 and 230.  The 220 and 230 are limited to 64MB of memory,
the 250 is limited to 256MB.


5.04: Others
From: anonymous
       
IBM RISC System/6000 Interface Products

National Instruments Corporation markets a family of instrumentation
interface products for the IBM RISC System/6000 workstation family.  The
interface family consists of three products that give the RISC
System/6000 connectivity to the standards of VMEbus, VXIbus and GPIB. 
For more information, contact National Instruments Corporation,
512-794-0100 or 1-800-433-3488.


5.05: C++ compilers

Several C++ compilers are available. You can choose from Glockenspiel,
Greenhills, IBM's xlC (sold seperatly :), and GNU's g++. Glockenspiel
may now be part of Computer Associates. Comeau Computing
(718-945-0009) offers Comeau C++ 3.0 with Templates. For a full
development environment there's ObjectCenter's C++ (formerly Saber
C++).


5.06: Memory leak detectors

IBM's xlC comes with a product called the HeapView debugger that can
trace memory problems in C and C++ code.

SENTINEL has full memory access debugging capabilities including detection 
of memory leaks.  Contact info@vti.com (800) 296-3000 (703) 430-9247.

Insight from ParaSoft (818) 792-9941.
There is also a debug_malloc posted in one of the comp.sources groups.

From: dad@adonis.az05.bull.com (Dave Dennerline)
  Purify from Pure software (408) 720-1600.
  TestCenter from Centerline (800) 669-2687.
Purify and TestCenter are not availible for the RS/6000 :(


5.07: PPP

PPP does not come with AIX 3.2.x (only SLIP) and there isn't a version
availible for anonymous ftp.  PPP for AIX is availible for $ from
Morningstar (sales@morningstar.com or marketing@morningstar.com) (800)
558-7872.


5.08: Graphics adapters

Abstract Technologies Inc. (Austin TX, 512-441-4040, info@abstract.com)
has several high performance graphics adapters for the RS/6000.
1600x1200, 24-bit true-color, and low cost 1024x768 adapters are
available.  Retail prices are between US$1000-2000.

______________________________________________________________________________
6.00: Miscellaneous other stuff

6.01: Can I get support by e-mail?

AIXServ is a service tool that allows users on internet and usenet to
report problems via unix mail. AIXServ is free. To receive instructions 
on using AIXServ, send a note with "Subject: package" to one of the
following e-mail addresses:

	Internet:   aixbugs%aixserv@uunet.UU.NET
	Usenet:     uunet.UU.NET!aixserv!aixbugs
                    aixbugs@austin.ibm.com     (transactions request)
                    services@austin.ibm.com    (administrivia)
                    aasc@austin.ibm.com        (test cases under 100KB)

Using AIXServ, customers have the ability to 1) open new problem reports,
2) update existing problem records, and 3) request a status update on an
existing problem record. Currently this service is available to United
States customers only.

Canada:

Gary Tomic mentioned that Canadian customers can get support from their
BBS, cac.toronto.ibm.com at 142.77.253.16.

Germany:

Thomas Braunbeck reported that German customers with ESS (extended
software service) contracts can get support by e-mail too. They can 
obtain information by sending mail with Subject: help to 
aixcall@aixserv.mainz.ibm.de.

Various flavors of service offerings are available. Contact your IBM rep
for details.


6.02: List of useful faxes

You can get some informative faxes by dialing IBM's Faxserver at
1-800-IBM-4FAX. If you're calling for the first time, push 3 then 2 to
request a list of RS/6000 related faxes.

document number                       Title
---------------  -----------------------------------------------------
     1453        Recovering from LED 518 in AIX 3.2
     1457        Recovering from LED 552 in AIX 3.1 and 3.2
     1461        Alternative Problem Reporting Methods
     1470        Recovering from LED 223/229, 225/229, 233/235, 221/229, or 221
     1537        How to Get AIX Support
     1719        Performance Analyzer/6000
     1721        Recovering from LED 553 in AIX 3.1 and 3.2
     1746        Recovering from LED 551 in AIX 3.1 and 3.2
     1755        Recovering Volume Groups
     1802        Repairing File Systems with fsck in AIX 3.1 and 3.2
     1803        How to Take a System Dump
     1804        Setting Up a Modem With the RS/6000
     1845        Using iptrace to Track Remote Print Jobs
     1867        Clearing the Queuing System
     1895        Removing/Replacing a Fixed Disk
     1896        Tape Drive Densities and Special Files
     1897        Tips on mksysb for AIX 3.2
     1909        UUCP (BNU) Helpful Information
     1910        Synchronizing Disk Names
     1988        Recovering from LED 201 in AIX 3.1 and 3.2
     1989        Recovering from LED 727 in AIX 3.2
     1991        Recovering from LED c31 in AIX 3.1 and 3.2
     2079        AIX 3.2.4
     2121        AIX 3.2.4 Installation Tips
     2267        How to reduce /usr in AIX 3.2
     2443        Man pages for AIX 3.2
     2446        How to set up sar
     2447        How to reduce /tmp
     2448        Installing a 5 GB tape drive
     2462        Bosboot diskettes
     2465        How to remove ptfs from the ODM

6.03: IBM's gopher, WWW, aftp presence (as of 6/10/94)
Thanks to Ronald S. Woan <woan@austin.ibm.com>

aix.boulder.ibm.com		(FixDist ptfs)
software.watson.ibm.com		(rlogin fixes & more)
gopher.ibmlink.ibm.com		(anonouncements & press releases)
www.austin.ibm.com		(software, hardware, service & support)

General IBM information like product announcements and press releases
are available through World Wide Web at http://www.ibm.com/

Specific information on the RISC System/6000 product line and AIX
(highlights include marketing information, technology White Papers and
the POWER 2 technology book online before it hits the presses,
searchable APAR database and AIX support FAX tips online so you don't
have to type in all those scripts) is available at http://www.austin.ibm.com/


6.04: Some RS232 hints
From: graeme@ccu1.aukuni.ac.nz, sactoh0.SAC.CA.US!jak

Q: How do you connect a terminal to the RS232 tty ports when not using
   the standard IBM cable & terminal transposer?
A: 1- Connect pins 2->3, 3->2, 7->7 on the DB25's
   2- On the computer side, most of the time cross 6->20 (DSR, DTR).
      Some equipment may require connecting 6, 8, and 20 (DSR, DCD, DTR).

Also, pin 1 (FG) should be a bare metal wire and the cable should be
shielded with a connection all the way through. Most people don't run
pin 1 because pins 1 & 7 (SG) are jumpered on many equipment.

When booting from diskettes, the port speed is always 9600 baud.  If you
use SMIT to set a higher speed (38400 is nice) for normal use, remember
to reset your terminal before booting.

Q: How do you connect a printer to the RS232 tty ports
A: 1- Connect pins 2->3, 3->2, 7->7 on the DB25's
   2- On the computer side, loop pins 4->5 (CTS & RTS)


6.05  What publications are available for AIX and RS/6000?

The following are free just for the asking:

1. RS/Magazine
   P.O. Box 3272
   Lowell, MA 01853-9876
   e-mail: aknowles@expert.com (Anne Knowles, editor)

2. AIXpert
   IBM Corporation
   Mail Stop 36
   472 Wheelers Farms Road
   Milford, CT 06460
   FAX: (203) 783-7669

3. RiSc World
   P.O. Box 399
   Cedar Park, TX 78613
   FAX: (512) 331-3900
   Usenet: {cs.utexas.edu,execu,texbell}!pcinews!rsworld


These manuals should be available from your favorite IBM office.
 
SC23-2204-02  Problem Solving Guide
SC23-2365-01  Performance Monitoring and Tuning Guide for AIX 3.2
SA23-2629-07  Service Request Number Cross Reference, Ver 2.2
SA23-2631-05  Diagnostic Programs: Operator Guide
SA23-2632-05  Diagnostic Programs: Service Guide
SA23-2643-01  Hardware Technical Reference: General Information
SA23-2646-01  Hardware Technical Reference: Options and Devices


6.06: Some acronyms

APAR - authorized program analysis report
BOS  - Basic Operating System
DCR  - design change request
LPP  - Licensed Program Product
ODM  - Object Database Manager
PRPQ - programming request for price quotation
PTF  - Program Temporary Fix
SMIT - System Management Interface Tool


6.07: How do I get this by mailserver or ftp?

Since the articles are crossposted to news.answers, any archive carrying
that newsgroup will also have these articles. In particular, try
rtfm.mit.edu in the directory pub/usenet/news.answers. This FAQ is
archived as "aix-faq/faq/part[1-3]".


6.08: Hypertext version of the FAQ
From: Michael D. Fischer <greendog@max.physics.sunysb.edu>

Mike has converted this AIX FAQ into HTML code for use from XMosaic or
other WWW browsers. If you have XMosaic and want to take a look, the URL is

http://insti.physics.sunysb.edu/faq/index.html


6.09: Where can I send suggestions for tools?

If you have any suggestions or comments about tools, whether currently or 
desirable to be in AIX, send a note to aix_tool_ideas@austin.ibm.com.


6.10: Comp.unix.aix archive availible on the WWW

Michael Staats & Fred Hucht have informed me that a 
searchable archive of comp.unix.aix is availible at: 
http://www.thp.Uni-Duisburg.DE:/cuaix/cuaix.html.


_____________________________________________________________________________
7.00: Contributors

The following persons have contributed to this list.  If you want to
contribute anonymously, just let me know - but do tell me who you are.
I apologise if I missed out anyone.

Thank you all, this would definitely not be the same without _your_ input.

Luis Basto			<basto@cactus.org>
Rudy Chukran			<chukran@austin.VNET.IBM.COM>
Christopher Carlyle O'Callaghan	<asdfjkl@wam.umd.edu>
Poul-Henning Kamp		<phk@data.fls.dk>
Richard Wendland                <richard@praxis.co.uk>
Ge van Geldorp			<ge@dutlru2.tudelft.nl>
Chris Jacobsen			<jacobsen@sbhep2.phy.sunysb.edu>
Peter Jeffe			<peter@ski.austin.ibm.com>
Jean-Francois Panisset		<panisset@thunder.mcrcim.mcgill.edu>
John Cary			<cary@boulder.colorado.edu>
Vijay Debbad			<vijay@ingres.com>
Dick Karpinski			<dick@ccnext.ucsf.edu>
Konrad Haedener			<haedener@iac.unibe.ch>
Doug Sewell			<DOUG@YSUB.YSU.EDU>
David Cordes			<cordes@athos.cs.ua.edu>
Graeme Moffat			<g.moffat@aukuni.ac.nz>
Andrew Pierce			<pierce@claven.cambridge.ibm.com>
Stephen Linam			<sdl@glasnost.austin.ibm.com>
Jerome Park			<jerome%aixserv@uunet.UU.NET>
Konrad Haedener			<haedener@iacrs1.unibe.ch> 
Steve Roseman			<lusgr@chili.CC.Lehigh.Edu>
John Burton			<burton@asdsun.larc.nasa.gov>
Thierry Forveille		<FORVEILL@FRGAG51.BITNET>
Joubert Berger			<afc-tci!joubert>
Minh Tran-Le			<tranle@intellicorp.com>
Paul Amaranth			<amaranth@vela.acs.oakland.edu>
Mark Whetzel			<markw@airgun.wg.waii.com>
Daniel Packman			<pack@acd.ucar.edu>
Ken Bowman			<bowman@uiatma.atmos.uiuc.edu>
Cary E. Burnette		<kerm@mcnc.org>
Christophe Wolfhugel		<wolf@grasp1.univ-lyon1.fr>
Leonard B. Tropiano		<lenny@aixwiz.austin.ibm.com>
Bill Wohler			<wohler@sap-ag.de>
James Salter			<jsalter@ibmpa.awdpa.ibm.com>
Witold Jan Owoc			<witold@enme.ucalgary.ca>
Marc Kwiatkowski		<marc@ultra.com>
Ronald S. Woan			<woan@austin.ibm.com>
Mijan Huq			<huq@hagar.ph.utexas.edu>
Herbert van den Bergh		<hbergh@nl.oracle.com>
Michael Stefanik		<mike@bria.UUCP>
John F. Haugh			<jfh@rpp386.cactus.org>
Ed Kubaitis			<ejk@ux2.cso.uiuc.edu>
Jaime Vazquez			<jaime@austin.vnet.ibm.com>
Bjorn Engsig			<bengsig@oracle.com>
Frank Kraemer 			<kraemerf@franvm3.VNET.IBM.COM>
Andreas Siegert                 <afx@muc.ibm.de>
Thomas Braunbeck                <braunbec@aixserv.mainz.ibm.de>
Marc Pawliger			<marc@sti.com>
Mel Beckman			mbeckman@mbeckman.mbeckman.com 
_____________________________________________________________________________

Opinions expressed here have nothing to do with IBM or my employer (AMS)
infact most of these opinions are borrowed from other people :)

All trademarks are the property of their respective owners.

-- 
Jeff Warrington
jwarring@flaixy.fd.amsinc.com  or  a165@lehigh.edu  

test 
