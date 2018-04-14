# scaletest
Scripts For Scale Tes

sudo apt-get install git
git clone https://github.com/blackjok3rtt/scaletest.git
cd scaletest
./buildkomodo.sh

cd ~/scaletest
# mineassets makes you a miner
./mineassets

#sync_assets connects you as a normal node for sending/receiving transactions
./sync_assets

#TXTEST-cli lets you interact with the first chain only.
./TXTEST-cli getnewaddress
./TXTEST-cli validateaddress
./TXTEST-cli dumpprivkey

#assets-cli interacts with all the chains
./assets-cli importprivkey
./assets-cli stop

#To run the send many start all chains with a pubkey you own
./sync_assets -pubkey=

#To blast transactions
./txblast 0.0001
