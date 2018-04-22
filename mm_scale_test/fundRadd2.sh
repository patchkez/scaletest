#!/bin/bash
source coinlist
source Radd
count=0
rpcport=7783
echo "TXids=(" > TXids
echo "rpcports=(" > rpcports

if [ -z ${1+x} ]
then 
    echo
    echo "Usage: ./fundRadd2.sh <amount>"
    echo
    exit
fi

while [ "x${coinlist[count]}" != "x" ]
do
  all=${coinlist[count]}
  name=${all%% *}
  if [ "$name" != "" ]
    then
     TXid=$(~/komodo/src/komodo-cli -ac_name=$name sendtoaddress $Radd $1)
     echo $TXid >> TXid
     echo $rpcport >> rpcports
     rpcport=$(( rpcport +1 ))
     echo "'$TXid'" >> $TXids
    fi
  count=$(( $count +1 ))
done

echo ")" > TXids
echo ")" > rpcports
