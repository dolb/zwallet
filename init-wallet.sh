#!/bin/bash


[[ -f "$HOME/.zclassic/zclassic.conf" ]] && exit 0

git clone https://github.com/z-classic/zclassic.git $HOME/git

$HOME/git/zcutil/build.sh -j$(nproc)
$HOME/git/zcutil/fetch-params.sh

echo "Generating new configuration file for zclassic username ... "
echo "@TODO something more dnsy"


echo "addnode=104.207.149.241" > $HOME/.zclassic/zclassic.conf
echo "addnode=139.59.230.86" >> $HOME/.zclassic/zclassic.conf
echo "addnode=52.53.125.97" >> $HOME/.zclassic/zclassic.conf
echo "addnode=13.91.45.250" >> $HOME/.zclassic/zclassic.conf
echo "addnode=2400:6180:0:d0::17c6:e001" >> $HOME/.zclassic/zclassic.conf
echo "addnode=136.243.50.159" >> $HOME/.zclassic/zclassic.conf
echo "addnode=78.94.32.196" >> $HOME/.zclassic/zclassic.conf
echo "addnode=158.69.183.22" >> $HOME/.zclassic/zclassic.conf
echo "addnode=120.27.230.83" >> $HOME/.zclassic/zclassic.conf
echo "addnode=91.215.188.165" >> $HOME/.zclassic/zclassic.conf
echo "addnode=54.84.135.119" >> $HOME/.zclassic/zclassic.conf
echo "addnode=138.68.48.247" >> $HOME/.zclassic/zclassic.conf
echo "addnode=2607:5300:60:ac0::1" >> $HOME/.zclassic/zclassic.conf
echo "addnode=89.142.65.151" >> $HOME/.zclassic/zclassic.conf
echo "addnode=198.100.147.192" >> $HOME/.zclassic/zclassic.conf
echo "addnode=138.197.199.86" >> $HOME/.zclassic/zclassic.conf
echo "addnode=45.77.142.139" >> $HOME/.zclassic/zclassic.conf
echo "addnode=60.170.218.192" >> $HOME/.zclassic/zclassic.conf
echo "addnode=79.98.144.29" >> $HOME/.zclassic/zclassic.conf
echo "addnode=2600:8802:3500:439:591d:2a08:b225:1c93" >> $HOME/.zclassic/zclassic.conf
echo "addnode=2a01:4f8:212:1281::2" >> $HOME/.zclassic/zclassic.conf
echo "addnode=217.182.79.13" >> $HOME/.zclassic/zclassic.conf
echo "addnode=37.187.167.145" >> $HOME/.zclassic/zclassic.conf
echo "addnode=74.105.45.225" >> $HOME/.zclassic/zclassic.conf
echo "addnode=213.185.254.158" >> $HOME/.zclassic/zclassic.conf
echo "addnode=2a02:908:162:5efc:21f:bcff:fe09:5c62" >> $HOME/.zclassic/zclassic.conf
echo "addnode=87.103.195.162" >> $HOME/.zclassic/zclassic.conf
echo "addnode=68.234.31.67" >> $HOME/.zclassic/zclassic.conf
echo "addnode=94.177.229.186" >> $HOME/.zclassic/zclassic.conf
echo "addnode=149.56.135.165" >> $HOME/.zclassic/zclassic.conf
echo "addnode=188.2.135.254" >> $HOME/.zclassic/zclassic.conf
echo "addnode=91.218.12.63" >> $HOME/.zclassic/zclassic.conf
echo "addnode=95.161.166.210" >> $HOME/.zclassic/zclassic.conf
echo "addnode=67.189.5.88" >> $HOME/.zclassic/zclassic.conf
echo "addnode=188.241.229.22" >> $HOME/.zclassic/zclassic.conf
echo "addnode=95.78.239.122" >> $HOME/.zclassic/zclassic.conf
echo "addnode=209.181.61.219" >> $HOME/.zclassic/zclassic.conf
echo "addnode=2001:0:9d38:953c:10a5:31ba:bc42:faa7" >> $HOME/.zclassic/zclassic.conf
echo "addnode=82.255.125.219" >> $HOME/.zclassic/zclassic.conf
echo "addnode=77.253.116.146" >> $HOME/.zclassic/zclassic.conf
echo "addnode=2002:5bd7:bca5::5bd7:bca5" >> $HOME/.zclassic/zclassic.conf
echo "addnode=88.99.199.93" >> $HOME/.zclassic/zclassic.conf
echo "addnode=2a01:4f8:221:26dc::2" >> $HOME/.zclassic/zclassic.conf
echo "addnode=101.166.233.114" >> $HOME/.zclassic/zclassic.conf
echo "addnode=74.110.198.76" >> $HOME/.zclassic/zclassic.conf
echo "addnode=67.215.14.195" >> $HOME/.zclassic/zclassic.conf

echo "rpcuser=zcl" >> $HOME/.zclassic/zclassic.conf
echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >> $HOME/.zclassic/zclassic.conf
echo "txindex=1" >> $HOME/.zclassic/zclassic.conf

echo "exportdir=$HOME/backup" >> $HOME/.zclassic/zclassic.conf



echo "FULLNODE READY, pulling electrumx to $HOME/electrumx"

git clone https://github.com/BTCP-community/electrumx $HOME/electrumx
