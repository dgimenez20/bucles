#!/bin/bash

read -p "INTRODUEIX RUTA ARXIU: " fitxer

if [ -e $fitxer ];then
 for linea in $(cat $fitxer);
 do
  sed -e '/^#/d' <$fitxer >sense_comentaris.txt
 done
fi

cat sense_comentaris.txt

read -p "INTRODUEIX UNA PARAULA: " paraula

existeix=0

for frase in $(cat sense_comentaris.txt);
do
 for par in $frase;
 do
  if [ $par == $paraula ];then
    existeix=1
  fi
 done
done

if [ $existeix == 1 ];
then
 echo "EXISTEIX"
else
 echo "NO EXISTEIX"
fi
read -p "INTRODUEIX UNA FRASE: " frase

echo $frase >> sense_comentaris.txt

cat sense_comentaris.txt
