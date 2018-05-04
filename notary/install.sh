#!/bin/bash
#Install Deps
sudo apt-get install build-essential pkg-config git libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip python zlib1g-dev wget bsdmainutils automake libssl-dev libprotobuf-dev protobuf-compiler libqrencode-dev ntp ntpdate software-properties-common curl libcurl4-gnutls-dev cmake clang libevent-dev libboost-all-dev

#Get repos
cd ~
git clone https://github.com/blackjok3rtt/scaletest.git -b 4096
git clone https://github.com/jl777/SuperNET.git -b dev
git clone https://github.com/jl777/komodo.git -b jl777

#copy m_notary_scale to iguana dir
cd ~/scaletest
cp m_notary_scale ~/SuperNET/iguana

#build komodo from jl777 branch
cd ~/komodo
./zcutil/build.sh -j$(nproc)
