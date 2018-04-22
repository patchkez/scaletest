#~/bin/bash
if [[ $1 = "" ]]
  then
    echo "no Address specified"
  exit
fi
for i in {0..16}
  do
    ./txsend sendtoaddress $1 1000 &
done
