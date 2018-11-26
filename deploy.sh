#!/bin/bash

./../parity-ethereum/target/release/parity --chain dev-conf.json --reseal-min-period 0 --min-gas-price 0 -l TRACE --jsonrpc-apis=all --jsonrpc-cors="null" --config ./EDBTEST.toml --tx-queue-locals 0xD2B6378Ee64c57163334E9cC1105e95Ffe9870eA &> logs.txt

