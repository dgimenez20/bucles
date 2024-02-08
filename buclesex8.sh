#!/bin/bash

#internet=0

until ping -c 5 'frontal.ies-sabadell.cat';
do
  echo "ERROR DE CONEXIO"
  sleep 5
done

sudo pidgin
