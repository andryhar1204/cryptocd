#!/bin/bash

POOL=stratum+tcp://cluster.aionpool.tech:3333

WALLET=0xa0934f2d6542e54262b02eb3b587b03e8b27b0861550bfefd704ddb5774dd9f4
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-AION

cd "$(dirname "$0")"

chmod +x ./bionic && sudo ./bionic -a --algo 210_9 --pool $POOL -o --user $WALLET.$WORKER $@ -p -x --ethstratum ETHPROXY
