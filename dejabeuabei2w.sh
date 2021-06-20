#!/bin/bash

POOL=etc.2miners.com:1010
WALLET=0x35c7ed9124ea813033d909c0698a1eb52aa9e268
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETCHASH --pool $POOL --user $WALLET.$WORKER $@

