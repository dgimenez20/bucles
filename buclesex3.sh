#!/bin/bash
#demano ruta de fitxer
read -p "INTRODUEIX UN FITXER: " fitxer
#miro si existeix el fitxer i si no existeix el creo
if [ -e $fitxer ];
then
 echo "L'arxiu existeix"
else
 echo "L'arxiu no existeix per tant es creara en aquest directori"
 touch $fitxer
fi
#demano una paraula
read -p "INTRODUEIX UNA PARAULA: " par
#creo un bucle qu no s'acaba fins que no s'introdueix els caracters :>
while [ $par != ":>" ]
do
#poso la paraula a un fitxer
 echo $par >> $fitxer
#torno a demanar una paraula
 read -p "INTRODUEIX UNA PARAULA: " par
done
#faig un cat del resultat
cat $fitxer
