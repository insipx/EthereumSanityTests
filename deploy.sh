#!/bin/bash

/home/insi/Projects/Parity/parity-ethereum/target/release/parity --chain dev-conf.json --reseal-min-period 0 --min-gas-price 0 -l TRACE --jsonrpc-apis=all --jsonrpc-cors="null" --config ./EDBTEST.toml &> logs.txt



#--tx-queue-locals 0xD2B6378Ee64c57163334E9cC1105e95Ffe9870eA


curl --data '{"method":"parity_newAccountFromPhrase","params":["stylus outing overhand dime radial seducing harmless uselessly evasive tastiness eradicate imperfect",""],"id":1,"jsonrpc":"2.0"}' -H "Content-Type: application/json" -X POST localhost:8545 &&

curl --data '{"method":"parity_setAccountName","params":["0x004385d8be6140e6f889833f68b51e17b6eacb29","Coinbase"],"id":1,"jsonrpc":"2.0"}' -H "Content-Type: application/json" -X POST localhost:8545 &&

curl --data '{"method":"eth_accounts","params":[],"id":1,"jsonrpc":"2.0"}' -H "Content-Type: application/json" -X POST localhost:8545

echo "Unlocking account 'Coinbase'..."
curl --data '{"method":"personal_unlockAccount","params":["0x004385d8be6140e6f889833f68b51e17b6eacb29","", null],"id":1,"jsonrpc":"2.0"}' -H "Content-Type: application/json" -X POST localhost:8545
