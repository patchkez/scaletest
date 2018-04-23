### Dependancies
Have all the chains running, `./sync_assets`

You need a recently compiled `marketmaker` from jl777 branch in jl777/SuperNET repo.

place `marketmaker` in mm_scale_test directory

edit the `passphrase` file in scripts sub directory

from mm_scale_test directory run `./client`

it will show `userpass` in console after started `marketmaker`

use that and save it in `userpass` file

Run `./calcaddfirstrun` Get the Raddress from here and get someone to fund you to this address, you also need to `./assets-cli importprivkey "wif"` for the shown wif key. Also make sure you get the pubkey and put that in `pubkey.txt` in the `scaltest` dir.

`./assets-cli stop` to stop all chains. Then Restart them with `./sync_assets`

Start `marketmaker` using `./client` in `mm_scale_test` dir.

Once marketmaker is running check you have balance on all chains with `./assets-cli getbalance`

From `mm_scale_test` dir run `./generateUTXO`

One this is finished a heap of files will be generated that get used in the next steps, these files are overwritten each time you run `./generateUTXO` so be careful what you are doing or you will lose funds.

Now run `pkill -15 marketmaker` a few times, to make sure marketmaker is not running.

Launch the marketmakers from the `mm_scale_test` dir using `./launchMM`

Wait until all the marketmakers have loaded, this takes a little while. :) 

Then launch `./TXblastMM.sh`

Watch and wait until the loops have finished.
