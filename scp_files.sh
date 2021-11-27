#!/bin/bash
for i in 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 
do
 scp -i  <key when needed>  -P  <port when needed> <user sourc/e host>@<sourc/e host>:path/folder$i/file.txt ./file_$i.txt
done
