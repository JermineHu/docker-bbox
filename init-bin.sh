#!/bin/sh
for i in `busybox --list`;  
do   
busybox ln -s busybox  $i /bin/$i
done
echo "remove the file "$0 # print the filename
rm $0
exit 0
