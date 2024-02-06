#!/bin/bash
arguments=0
until [ ${#arguments} == 5 ] | [ $# == 3 ]
do
	if [ ${#arguments} != 5 ];then
		echo "ERROR"
		read -p "Escriu arguments: " arguments
	else
		break
	fi
done

