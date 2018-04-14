#!/bin/bash 
COUNTER=0
while [  $COUNTER -lt 100 ]; do
  ./txblast.sh 0.00777 &
  ./txblast.sh 0.00777 &
  ./txblast.sh 0.00777 &
  ./txblast.sh 0.00777 &
  ./txblast.sh 0.00777 &
  sleep 3
  let COUNTER=COUNTER+1
done
