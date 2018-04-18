#!/bin/bash 
COUNTER=0
count=0
rm testlog
echo "start" >> testlog
date >> testlog
while [  $COUNTER -lt 100 ]; do
  ./txblast.sh 0.000777 &
  ./txblast.sh 0.000777 &
  ./txblast.sh 0.000777 &
  ./txblast.sh 0.000777 &
  ./txblast.sh 0.000777 &
  sleep 1
  let COUNTER=COUNTER+1
  count=$(( count +1 ))
done
echo $count >> testlog
echo "finish" >> testlog
date >> testlog

