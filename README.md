### Scripts For Scale Test

`sudo apt-get install git`

`git clone https://github.com/blackjok3rtt/scaletest.git`

`cd scaletest`

`./buildkomodo.sh`

`cd ~/scaletest`

### mineassets makes you a miner

`./mineassets`

### sync_assets connects you as a normal node for sending/receiving transactions

`./sync_assets`

### TXTEST-cli lets you interact with the first chain only.

`./TXTEST-cli getnewaddress`

`./TXTEST-cli validateaddress`

`./TXTEST-cli dumpprivkey`

### assets-cli interacts with all the chains

`./assets-cli importprivkey`

`./assets-cli stop`

### To run the send many start all chains with a pubkey you own
### You will need funds sent to the address from the seed node operator to the R address of pubkey.txt in this folder.

`./sync_assets`

### To blast transactions

./blastloop.sh 0.00777



# Generate Chains

### The **genac** script generates scripts for the test chains
### It will generate four files which will need to be shared with the test organizer

#### Usage

`./genacs <numchains> <chainname> <supply>`

#### Example

`./genacs 10 TXTEST 1000000`

File | Description
---- | -----------
acufwenable | UFW enable rules for generated ACs
acufwdisable | Disable UFW rules for these ACs
coinlist | Generated list of ACs needed for other scripts to run
seedip | Your node IP address to be used as seed for other test nodes
