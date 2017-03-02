#!/bin/bash
cd "/Users/Rob/Code/wldrmn/Sea-Moan"

mkdir -p out

strt="this is the start of the file"
why="this is the end of the file"

awk -F',' \
 '{ f="\"out/"$1".txt\""; system("echo \"          " $0 ""             "\" >" f ); }'  \
 seamoan.csv