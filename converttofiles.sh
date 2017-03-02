#!/bin/bash

for i in $(cat seamoan.csv); do
  name=$(echo "$i"|awk -F',' '{ print $0 >($1 ".xml") }'  seamoan.csv)
  echo "doing $name"
  echo "<$name>$name</$name>" >${name}.xml
done