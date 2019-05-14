#!/bin/bash
cd /root/nuls_2.0/NULS-Wallet-linux64-alpha2
./stop-mykernel
APP_PID=`ps -ef|grep -w "name=api-module "|grep -v grep|awk '{print $2}'`
if [ -n "$APP_PID" ]; then
	kill $APP_PID > /dev/null 2>&1
fi
rm -rf ./data
rm -rf /opt/mongodb/data/*
mongod -f /etc/mongodb.conf
cd ..
./package -mb "alpha3-test"
cd ./NULS-Wallet-linux64-alpha2
eval "sed -i '' 's/^Managed=0/Managed=1/' ./Modules/Nuls/api-module/1.0.0/Module.ncf"
./start-mykernel -c my.ncf