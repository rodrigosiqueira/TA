#!/bin/bash

echo "=== Reading file ==="

echo "First approach: while and read line by line"
count=0
while read line; do
  echo "$count: $line"
  ((count++))
done < file.txt

echo "Second approach: working with file descriptor"
echo -e "\t 1) Create a copy from stdin"
exec 6<&0
echo -e "\t 2) Replace stdin, by the file"
exec < file.txt
echo -e "\t 3) Read just two lines"
read line1
read line2
echo "line1: $line1"
echo "line2: $line2"
echo -e "\t 4) Restore stdin"
exec 0<&6 6<&-

echo "Third approach: read only 10 characters"
while read -N 10 line; do
  echo "$line"
done < file.txt
