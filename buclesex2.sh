#!/bin/bash
#demano cadena de nombres
read -p "INTRODUEIX NOMBRES ENTERS: " cadena
#creo un contador
count=0
#faig un bucle recorrent un per un els numeros introduits en la cadena
for num in $cadena; do
#si el numero es igual a zero sumo un al contador
 if  [ $num -eq 0 ]; then
  count2=$(($count + 1))
  count=count2
 fi
done
#printo el contador
echo $count2
