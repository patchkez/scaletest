#!/bin/bash 
COUNTER=0
COUNTER1=0
while [  $COUNTER1 -lt 1000 ]; do
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  ./txblast.sh 0.0001 &
  sleep 7
  let COUNTER1=COUNTER+1
done
