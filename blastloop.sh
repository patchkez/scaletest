#!/bin/bash 
COUNTER=0
while [  $COUNTER -lt 3 ]; do
  ./txsend $1 &
  sleep 7
  let COUNTER=COUNTER+1
done
