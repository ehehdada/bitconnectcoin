from ubuntu:14.04
maintainer ehehdada, ltd. <ehehdadaltd@gmail.com>
run apt-get update 
run apt-get install -y \
	wget libssl1.0.0 libdb++-dev \
	miniupnpc libminiupnpc-dev \
	qrencode libqrencode3 \
	libboost-dev libboost-system-dev libboost-filesystem-dev \
	libboost-program-options-dev libboost-thread-dev \
	unzip
run wget https://github.com/bitconnectcoin/bitconnectcoin/raw/master/setup/bitconnect-coin-deamon-file/bitconnectd.zip
run unzip bitconnectd.zip
run rm bitconnectd.zip
run chmod +x bitconnectd
copy run.sh /run.sh
run chmod +x /run.sh
expose 9239 19239 9240 19240
cmd ["/run.sh"]
