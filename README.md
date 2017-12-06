# Bitconnect docker image

[Bitconnect](https://bitconnectcoin.co/) is a fork of the original bitcoin, with a loan bot that produces 1% daily interest. And also their multi-level referral program.

Reference [Bitcoin vs Bitconnect: Which One's The Scam?](https://steemit.com/bitcoin/@hoho/bitcoin-vs-bitconnect-which-one-s-the-scam)

## Configure

You need a configuration file to replace the one that comes with the image at /root/.bitconnect/bitconnect.conf

Please reference the one at [https://bitconnectcoin.co/guide/9/How-to-Mine-BitConnect-Coin-Guide-to-start-BitConnect-Coin-miner](https://bitconnectcoin.co/guide/9/How-to-Mine-BitConnect-Coin-Guide-to-start-BitConnect-Coin-miner)

## Help

### Help about options of the daemon
```
docker exec -it <your_container_name> /bitconnectd --help
```
### Help about commands of the daemon
```
docker exec -it <your_container_name> /bitconnectd help
```

## Run the container

Create a folder where to host the `bitconnect.conf` file like for example "myBitconnect", that must be mapped with the `/root/.bitconnect` folder. The container will set the permissions `bitconnect.conf` file as it is holding the RPC password. 

The ports 9239, 19239 (testnet), 9240 (rpc), and 19240 (rpc in testnet) are exposed. Map the 9239 to your host. 

The database will also be stored in your folder together with `bitconnect.conf` file.

Make it run with a command like:
```
docker run \
  --name <your_cointainer_name> \
  -dit \
  -v $(pwd)/myBitconnect:/root/.bitconnect \
  -p 9239:9239 \
  ehehdada/bitconnectcoin
```

## Donations

* Peercoin address `PEkmXcgL4wWb2mSZiLXr5cMfRKvpFY1kaA`
