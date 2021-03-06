#!/bin/sh
apt-get update
apt-get upgrade
apt-get install -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev make g++ git libgmp-dev 
git clone https://github.com/magi-project/m-cpuminer-v2
cd m-cpuminer-v2
./autogen.sh
CFLAG="-O2 mfpu=neon-vfpv4" ./configure
make
cd m-cpuminer-v2
./m-minerd -o stratum+tcp://mining.m-hash.com:3334 -u vux556. -p 123