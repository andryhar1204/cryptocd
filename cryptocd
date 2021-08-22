#!/bin/bash

POOL=stratum+tcp://kawpow.eu-west.nicehash.com:3390

WALLET=3K58rk4hAySW78RPaxkzFVhddAL7iMxkbZ

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

chmod +x ./CryptoDredge && sudo ./CryptoDredge --algo KAWPOW --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY
