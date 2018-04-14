#!/bin/bash 
if [[ $1 = "" ]]
then
 echo "no transaction size specified"
 exit
fi

COUNTER=0
while [  $COUNTER -lt 100 ]; do
  ./txblast.sh $1 &
  sleep 2
  let COUNTER=COUNTER+1
done
