#!/bin/bash
read -p "INTRODUEIX UN FITXER: " fitxer
if [ -e $fitxer ];
then
 echo "L'arxiu existeix"
else
 echo "L'arxiu no existeix per tant es creara en aquest directori"
 touch $fitxer
fi

read -p "INTRODUEIX UNA PARAULA: " par
while [ $par != ":>" ]
do
 echo $par >> $fitxer
 read -p "INTRODUEIX UNA PARAULA: " par
done
cat $fitxer
