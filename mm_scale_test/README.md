place `marketmaker` in mm_scale_test directory.
edit the `passphrase` file in scripts sub directory
from scripts directory run `./client`
it will show `userpass` in logs when started marketmaker
use that and save it in scripts/userpass file
use other scripts
enable coin
check balance
use `komodo-cli -ac_name=TXSCL validateaddress` to validate your address is watchonly false
send some funds to your address you got from balance output
check listunspent output using `./listunspent` script
note, `txid`, `vout` and `amount`
use `txblast` script with `txid` `vout` and `amount`
amount returned by ./listunspent should multiply to 10000000
example 4.55 * 100000000 = 455000000
I also used `| jq`
so install `jq` for pretty json outputs
