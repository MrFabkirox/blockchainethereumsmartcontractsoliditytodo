Versions:
// ex:  "0.4.20". (Default: Truffle's installed solc)

$ truffle version

...Truffle v5.1.34 (core: 5.1.34)
...Solidity v0.5.16 (solc-js)
...Node v11.10.1
...Web3.js v1.2.1

//.Truffle v5.0.2 (core: 5.1.34)
//.Solidity v0.5.0 (solc-js)
//.Node v8.9.0
//.Web3.js v?????

package.json

...truffle": "5.0.2",
...truffle-contract": "3.0.6"
//.truffle": "5.0.2",
//.truffle-contract": "3.0.6"


Migration.sol

...pragma solidity >=0.4.21 <0.7.0;
//.pragma solidity >=0.4.21 <0.6.0;

TodoList.sol

...pragma solidity ^0.5.0;
//.pragma solidity ^0.5.0;


truffle-config.js

...version: "0.5.0", // "0.4.20" Default Truffle's solc
...host: "127.0.0.1",
...port: 7545,


Ganache
...hostname 120.0.0.1 - Io0
...port number 7545
...network id 5777
...hardfork Muir Glacier
...Ganache/advanced/verbose logs ./build/contracts/
...address 0xA69A69ae0c947c08FdFCAEd5052e26EcB08e4Ca5

$ truffle init
$ npm init

$ truffle compile

$ truffle migrate
$ truffle console
truffle(development)> todoList = await TodoList.deployed()
truffle(development)> todoList.address
truffle(development)> todoList.taskCount()

BN {
  negative: 0,
  words: [ 1, <1 empty item> ],
  length: 1,
  red: null }

truffle(development)> taskCount = await todoList.taskCount()
undefined
truffle(development)> taskCount.toNumber()
0

$ truffle compile
$ truffle migrate --reset


2557$ truffle console
truffle(development)> todoList = await TodoList.deployed()

truffle(development)> todoList.address
'0x82cfed2e930808510983E3c5587a4Aa04e5b99B3'

truffle(development)> todoList.taskCount()
BN {
  negative: 0,
  words: [ 1, <1 empty item> ],
  length: 1,
  red: null }
truffle(development)>
undefined
truffle(development)> taskCount = await todoList.taskCount()
undefined
truffle(development)> taskCount.toNumber()
1

// code change

$ truffle compile
$ truffle migrate --reset
$ truffle console
truffle(development)> todoList = await TodoList.deployed()
truffle(development)> taskCount = await todoList.tasks(1)

truffle(development)> task = await todoList.tasks(1)
undefined
truffle(development)> task
Result {
  '0':
   BN {
     negative: 0,
     words: [ 1, <1 empty item> ],
     length: 1,
     red: null },
  '1': 'check out dappuniversity.com',
  '2': false,
  id:
}

npm dev run 

