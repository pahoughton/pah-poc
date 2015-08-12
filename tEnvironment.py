import os
import subprocess

subprocess.call('/usr/bin/env')
print "\n\n---\n\n"
del os.environ['CVSROOT']
del os.environ['CVS_RSH']
subprocess.call('/usr/bin/env')
