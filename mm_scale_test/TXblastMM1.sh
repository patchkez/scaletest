#!/bin/bash
#Read rpcports/TXids arrays and send a txblast API call to each of the X MM's launched
source password
source userpass
source TXids
source rpcports
source amount.txt
source ../coinlist
count=0

while [ "x${rpcports[count]}" != "x" ]
do
  rpcport=${rpcports[count]}
  TXid=${TXids[count]}
  all=${coinlist[count]}
  coin=${all%% *}
  utxovout=1
  curl --url "http://127.0.0.1:$rpcport" --data "{\"userpass\":\"$userpass\",\"broadcast\":1,\"numblast\":50000,\"password\":\"$password\",\"utxotxid\":\"$TXid\",\"utxovout\":$utxovout,\"utxovalue\":$amount,\"txfee\":100000,\"method\":\"txblast\",\"coin\":\"$coin\",\"outputs\":[{\"RKV4MzePkH8H9N6K3RdC1JDDWBLbCE4H5p\":0.0001}]}"
  count=$(( $count +1 ))
done
