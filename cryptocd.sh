#!/bin/bash

POOL=stratum+tcp://kawpow.usa-west.nicehash.com:3353

WALLET=3K58rk4hAySW78RPaxkzFVhddAL7iMxkbZ

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

chmod +x ./CryptoDredge && sudo ./CryptoDredge -a --algo KAWPOW --pool $POOL -o --user $WALLET.$WORKER $@ -p -x --ethstratum ETHPROXY
