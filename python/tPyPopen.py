import os
import subprocess
SCRIPT_SOURCE = '/Users/paul/Devel/Systems/pah_test_host/components/puppet/modules/gitolite/files/jenkins.post-receive.py'

cmd = ['python3.3', SCRIPT_SOURCE]
my_env = os.environ
my_env['GIT_REPO'] = 'testrepo.git'
my_env['GIT_CONFIG'] = 'mygitconfig'

with subprocess.Popen(cmd, 
                      stdout=subprocess.PIPE,
                      env=my_env) as proc:
    print( proc.stdout.read() )

print( SCRIPT_SOURCE )
# cmd = ['python3.3','--version']

with subprocess.Popen(cmd,
                      stdin=subprocess.PIPE,
                      stdout=subprocess.PIPE,
                      stderr=subprocess.STDOUT,
                      env=my_env) as proc:
    stdinText = 'nref oref devel\n'
    (scriptOut) = proc.communicate(stdinText,20)
     
scriptOut = scriptOut.decode('utf-8').strip()
print(scriptOut)
