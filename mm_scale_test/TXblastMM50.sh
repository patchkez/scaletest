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
  curl --url "http://127.0.0.1:$rpcport" --data "{\"userpass\":\"$userpass\",\"broadcast\":1,\"numblast\":50000,\"password\":\"$password\",\"utxotxid\":\"$TXid\",\"utxovout\":$utxovout,\"utxovalue\":$amount,\"txfee\":100000,\"method\":\"txblast\",\"coin\":\"$coin\",\"outputs\":[{\"RKV4MzePkH8H9N6K3RdC1JDDWBLbCE4H5p\":0.0001}, {\"RSzuS5dT5WYLxZekMwcoGXQjtcD9FufPaq\":0.0001}, {\"RA9aBVW2aDTyZnSU2epa728t9d8DJr3ure\":0.0001}, {\"RFcoWT26WhDgMLAnULxPB4HaLbvHF2fE5f\":0.0001}, {\"RSNjkCvCSRX2bkXaWERmpfF97C5HrFSfE4\":0.0001}, {\"RWPYGWqDjiYFHgW4hUT6qyrPLd93tykxiX\":0.0001}, {\"R9UyGTbwhrC4BTojSRTSKRnyUVhEiTHL66\":0.0001}, {\"RNSnYR1s1ntUGP6yeQX168QwnD3tFufJ16\":0.0001}, {\"RVt4EAR89sM38AYyzpWQsHR1baNDjKe6KK\":0.0001}, {\"RBZ8iRhVbZhcFVeGgtusTbLVWAWDvJe7gu\":0.0001}, {\"RLRQSV9XF6ifw4R68hnoLWvtCd2ELqNH6b\":0.0001}, {\"RUF86TRk5dbUHsJBxhccnuPRbXa6m3RN72\":0.0001}, {\"RFLtasrxHCCxkc3P1UqddjppGbg2jr7u36\":0.0001}, {\"RRxtsknqXW9y1CVnMLceDmGxVfZXiDBoym\":0.0001}, {\"RVDQFH34uD1MPe5RbyJVPaRDfUZXB6W9NV\":0.0001}, {\"RFbZSzpocvcjyZ2Jp2pQmicRCwjdXuSp2v\":0.0001}, {\"R9vXrtDkWw1aUfJz1axz3cp6Jhi3ffFLer\":0.0001}, {\"RVJ4cYphioPWw1DqSyw4bDyqhvvonPcC5w\":0.0001}, {\"RNR8jxBoAWfKybPrmYjtsFef29k2WEtDny\":0.0001}, {\"RS7dxchoiUK4Lh1rHXHJkktphcH6Mt5ng6\":0.0001}, {\"RDtFAjkyw2egHBHwEnJ9TyPQJygNqeU3uS\":0.0001}, {\"RXm4WW7LWjctQqHmDauP4NpYqvtgLR23Bj\":0.0001}, {\"RD3eAPpsrHxMDrBZCah9RqSrf64YfN8hi7\":0.0001}, {\"RHjK81VAnpJgYVmi4MWdc1M2xqkZWWNonJ\":0.0001}, {\"RTvjzKugQxt6xvPFoZayyMvstj3Ag91Te7\":0.0001}, {\"RQgsrwwRdmXc1bF3sFfyAdXFhSNc79ktmX\":0.0001}, {\"RHE3PUBTzMfSpXgfS98Xcza6UqKQL16A8b\":0.0001}, {\"RG7ntD8NwEZpTsFbCrgQVCGxJfQwKzNLR3\":0.0001}, {\"RRF145d4xnZ9qBHyEc9tf8HSUYR1cFiCyA\":0.0001}, {\"RD2Fa9kn61ywhKyvEiYxmHPGMA17PBCR5m\":0.0001}, {\"RAGjyju9AHWU84QUycoN6xNm8UgJekcuwh\":0.0001}, {\"RLDz2CDngpetYTehz9JQfpC6MY9VLYyFkV\":0.0001}, {\"RPcCcfeMtDmeV7WAExmoMaLp3ZcngceT1U\":0.0001}, {\"RSszmCdPu8fWkJ4dJQkWhqLwVheUKN6QmT\":0.0001}, {\"RBv9ugirEgnKefstVGqFgHPGeJ7DYFJiiQ\":0.0001}, {\"RQnKhFF5QNyTukhDYEZAAeEN6sbGd9R9ub\":0.0001}, {\"RSXbE8tQLKuYkCneDHTcw5zSWBkxaCfWxG\":0.0001}, {\"RD3CefpW2xsSzw5wMRT6K6nsgxhbkWVCVK\":0.0001}, {\"RXcHCVhNHqLKN2ijWxb2Bnpydv7kn7LjxC\":0.0001}, {\"RYbCQFSEz5jsJdZkECtHbnQif2SdXvyDCW\":0.0001}, {\"RPabLP8KEd4LDVhCSeVBZpw5FBotPyMvCX\":0.0001}, {\"RXxgzUwPvzVaGK3gR9V3fGHPMaKA5oWVsd\":0.0001}, {\"RTz73Bqdci2Gv7JSoATYwYjXBBbp2km8qQ\":0.0001}, {\"RQddHixKNB8K3Jb49dYTFR22V8L78jKkiJ\":0.0001}, {\"REHFUaf8MWPXwXwPjVqwu8EShzru6YMNLS\":0.0001}, {\"RKicV4JwCh3N92sSH5q67yX1KMExg73xoG\":0.0001}, {\"R9xGRL81xkvjA2KUR8TKwc5PueFf7crwx1\":0.0001}, {\"RSR7CPzPCBkPJtJdiDVkuYxFxTUJFWf6st\":0.0001}, {\"RAiauDfjnRtyaDL77Q6RMT4LV5fv5DtLYU\":0.0001}, {\"RNCiezEz1Wibca92KhdeAShgC1y4YrH7X2\":0.0001}]}" &
  count=$(( $count +1 ))
done
