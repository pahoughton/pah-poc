#!/bin/bash
# 2015-08-12 (cc) <paul4hough@gmail.com>
#
# remove all but the 'keep' newest files/dirs
#
cnt=0
keep=4

for f in `ls -t *` ; do
  let cnt=cnt+1
  if [ $cnt -gt $keep ] ; then
    echo rm -rf $f
  fi
done
