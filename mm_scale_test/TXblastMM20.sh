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
  curl --url "http://127.0.0.1:$rpcport" --data "{\"userpass\":\"$userpass\",\"broadcast\":1,\"numblast\":50000,\"password\":\"$password\",\"utxotxid\":\"$TXid\",\"utxovout\":$utxovout,\"utxovalue\":$amount,\"txfee\":100000,\"method\":\"txblast\",\"coin\":\"$coin\",\"outputs\":[{\"RKV4MzePkH8H9N6K3RdC1JDDWBLbCE4H5p\":0.0001}, {\"RSzuS5dT5WYLxZekMwcoGXQjtcD9FufPaq\":0.0001}, {\"RA9aBVW2aDTyZnSU2epa728t9d8DJr3ure\":0.0001}, {\"RFcoWT26WhDgMLAnULxPB4HaLbvHF2fE5f\":0.0001}, {\"RSNjkCvCSRX2bkXaWERmpfF97C5HrFSfE4\":0.0001}, {\"RWPYGWqDjiYFHgW4hUT6qyrPLd93tykxiX\":0.0001}, {\"R9UyGTbwhrC4BTojSRTSKRnyUVhEiTHL66\":0.0001}, {\"RNSnYR1s1ntUGP6yeQX168QwnD3tFufJ16\":0.0001}, {\"RVt4EAR89sM38AYyzpWQsHR1baNDjKe6KK\":0.0001}, {\"RBZ8iRhVbZhcFVeGgtusTbLVWAWDvJe7gu\":0.0001}, {\"RLRQSV9XF6ifw4R68hnoLWvtCd2ELqNH6b\":0.0001}, {\"RUF86TRk5dbUHsJBxhccnuPRbXa6m3RN72\":0.0001}, {\"RFLtasrxHCCxkc3P1UqddjppGbg2jr7u36\":0.0001}, {\"RRxtsknqXW9y1CVnMLceDmGxVfZXiDBoym\":0.0001}, {\"RVDQFH34uD1MPe5RbyJVPaRDfUZXB6W9NV\":0.0001}, {\"RFbZSzpocvcjyZ2Jp2pQmicRCwjdXuSp2v\":0.0001}, {\"R9vXrtDkWw1aUfJz1axz3cp6Jhi3ffFLer\":0.0001}, {\"RVJ4cYphioPWw1DqSyw4bDyqhvvonPcC5w\":0.0001}, {\"RNR8jxBoAWfKybPrmYjtsFef29k2WEtDny\":0.0001}, {\"RS7dxchoiUK4Lh1rHXHJkktphcH6Mt5ng6\":0.0001}]}" &
  count=$(( $count +1 ))
done
