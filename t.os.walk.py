import os

for rootDir, dirList, fileList in os.walk('.'):
    print "ROOT: "+ rootDir
    if os.path.isfile( os.path.join( rootDir,
                                     'CVS',
                                     'Root')):
        print 'Got: %s/CVS/Root' % rootDir
        
    

