#!/bin/bash

echo "PREPARAT PER JUGAR!!"

echo -e "Escull opcio \n1.Pedra \n2.Paper \n3.Tisores \n4.Sortir"
read -p "" opcio

while [ $opcio != 4 ]
do
 maquina=`echo $((1 + $RANDOM % 3))`
 if [ $opcio == 1 ] && [ $maquina == 2 ];then
  echo "Guanya maquina!!"
 elif [ $opcio == 1 ] && [ $maquina == 3 ];then
  echo "Has guanyat!!"
 elif [ $opcio == 2 ] && [ $maquina == 1 ];then
  echo "Has Guanyat!!"
 elif [ $opcio == 2 ] && [ $maquina == 3 ];then
  echo "Guanya la maquina!!"
 elif [ $opcio == 3 ] && [ $maquina == 1 ];then
  echo "Guanya la maquina!!"
 elif [ $opcio == 3 ] && [ $maquina == 2 ];then
  echo "Has guanyat!!"
 elif [ $opcio == $maquina ];then
  echo "Empat!!"
 fi
echo -e "Escull opcio \n1.Pedra \n2.Paper \n3.Tisores \n4.Sortir"
read -p "" opcio

done
