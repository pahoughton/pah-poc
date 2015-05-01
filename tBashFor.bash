d#!/bin/bash
dcnt=22 # disk count
d=0
fd=a

while test $d -lt $dcnt ; do

  let d=d+2;
  sd=$(echo "$fd" | tr "0-9a-z" "1-9a-z_")

  echo $d $fd $sd

  fd=$(echo "$sd" | tr "0-9a-z" "1-9a-z_")
done
