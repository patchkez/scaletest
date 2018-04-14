#!/bin/bash 
if [[ $1 = "" ]]
then
 echo "no transaction size specified"
 exit
fi

COUNTER=0
while [  $COUNTER -lt 3 ]; do
  ./txblast $1 &
  sleep 10
  let COUNTER=COUNTER+1
done
