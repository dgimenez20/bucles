#!/bin/bash

cut -d ":" -f 1 /etc/passwd > passwd.txt
while read user;
do
 if [[ $user =~ [A-Z] ]];then
  echo $user
 fi
done < passwd.txt

read -p "Introdueix un nom de usuari: " usuari

valid=0

while [ $valid != 1 ];
do
 while read linea;
 do
  if [[ $linea  == $usuari ]]; then
   echo "Usuari valid"
   cat /etc/passwd | grep $usuari
   valid=1
  fi
 done < passwd.txt
 if [[ $valid = 0 ]];then
  read -p "Introdueix un nom de usuari: " usuari
 fi
done
