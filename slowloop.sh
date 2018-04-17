#!/bin/bash
source recipients
for i in {1..10}
do
	for i in {1..10}
  	do 
    		selectedaddress=${recipients[$RANDOM % ${#recipients[@]} ]}
    		./txsend sendtoaddress $selectedaddress 0.00777
	done
	sleep 20
done
