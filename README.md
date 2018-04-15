# KMD Scaling Test 

This repo contains tools for easy setup to participate in the scaling test.

Please sign up here: [Signup Sheet for Scaling Test](http://pad.supernet.org/Stress_Test_Signups)

## Install Steps

```shell
sudo apt-get install git
git clone https://github.com/blackjok3rtt/scaletest.git
cd scaletest
./buildkomodo.sh
cd ~/scaletest
```

When this is complete please refer to the section below for the role you are filling.

### For Transaction Blasters

You will need to create a pubkey.txt file and place it in the **scaletest** directory in the format.

```shell
pubkey=<yourpubkey>
```
To get the pubkey you need to do validateaddress on an Raddress you have the private key for. (see [txtest-cli](#TXTEST-cli)) section below for an example of how to get a new address if you don't already have one you want to use.

Next run importprivkey on all the test assetchains (see [assets-cli](#assets-cli)) before continuuing. After importing the private key, you will need to restart your chains making sure pubkey.txt has been created.

You will need funds sent to the address from the seed node operator to the R address of pubkey.txt in this folder.

5-10 UTXO of 100 should be plenty. Make sure your Raddress is posted in the Signups Page so the operator can send funds.

To blast transactions, this script will send 100 loops of 5 transactions on each chain. 50,000 Transactions each with 100 outputs. 5M payments per node.

```shell
./sync_assets
sh blastloop.sh
```

### For CPU Miners

```shell
./mineassets
```

### For Regular Nodes (Stats, etc)
```shell
./sync_assets
```

## assets-cli 

This file lets you interact with all the chains.

Examples:
```shell
./assets-cli importprivkey

./assets-cli stop
```

### TXTEST-cli 

Interacts with just the first of the test chains only.

Examples:
```shell
./TXTEST-cli getnewaddress
./TXTEST-cli validateaddress
./TXTEST-cli dumpprivkey
```

# Generating Chains

**FOR THE FIRST ROUND OF TESTS THESE ARE NOT REQUIRED OF TESTERS**

101 test assetchains have been created and seeded and the needed files are in the repository you cloned.  Do not run these scripts or you might overwrite files needed in the first round of testing.

The **genac** script creates the initial parameters new test chains. 

Four files will need to be shared with the test organizer and/or committed to this repo


```shell
./genacs <numchains> <chainname> <supply>
```

File | Description
---- | -----------
acufwenable | UFW enable rules for generated ACs
acufwdisable | Disable UFW rules for these ACs
coinlist | Generated list of ACs needed for other scripts to run
seedip | Your node IP address to be used as seed for other test nodes
