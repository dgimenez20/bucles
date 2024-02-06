#!/bin/bash

read -p "INTRODUEIX NOMBRES ENTERS: " cadena

count=0

for num in $cadena; do
 if  [ $num -eq 0 ]; then
  count2=$(($count + 1))
  count=count2
 fi
done

echo $count2
