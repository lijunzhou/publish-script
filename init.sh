#!/bin/bash
cd /root
git clone https://github.com/nuls-io/nuls-v2.git
mv nuls-v2 nuls_2.0
cd ./nuls_2.0
git checkout alpha3-test
./package -mN
cd ./NULS-Wallet-linux64-alpha2
cp ./nuls.ncf ./my.ncf
