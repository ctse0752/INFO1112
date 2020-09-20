#!/bin/bash

touch volumes.txt
df -h | grep -v Filesystem | sort -k 4 > volumes.txt

cat volumes.txt | while read line
do
  echo $line | awk '{print $1}'
done
