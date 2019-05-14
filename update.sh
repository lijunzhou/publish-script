#!/bin/bash
echo $JAVA_HOME
cd /root/nuls_2.0/NULS-Wallet-linux64-alpha2
./stop-mykernel
cd ..
./package -mb "alpha3-test"
cd ./NULS-Wallet-linux64-alpha2
./start-mykernel