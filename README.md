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
*Detailed instructions for creating this forthcoming, but it is the same process as notary nodes follow to generate pubkey*

Next run importprivkey on all the test assetchains (see [assets-cli](#assets-cli)) before continuuing

You will need funds sent to the address from the seed node operator to the R address of pubkey.txt in this folder.

5-10 UTXO of 100 should be plenty.

To blast transactions, this script will send 100 loops of 5 transactions on each chain. 50,000 Transactions each with 100 outputs. 5M payments per node.

```shell
./sync_assets
sh blastloop.sh
```

### For CPU Miners

```shell
./mineassets
```

### For Regular Nodes (Stats, Mining Pool etc)
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

# Mining Pool Setup - ZNOMP

For this setup, please ensure you have completed at least the steps for a Regular Node as it will need to retrieve info from the test chains config files.

```shell
cd ~/scaletest/znomp/
nano generate
```

Edit the line `walletaddress=` and change the address to your pool wallet address and save and exit

```shell
./generate
```

Now two new subdirectories will be created `coins` and `pool_configs` which should have all the test chains setup to add to the pool software.

Stratum ports are set to start at 20777 and increment by 1 for each additional test chain.
