<h4>Versions</h4>
// ex:  "0.4.20". (Default: Truffle's installed solc)<br />
<br />
<h4>truffle</h4>
$ truffle version<br />
<br />
...Truffle v5.1.34 (core: 5.1.34)<br />
...Solidity v0.5.16 (solc-js)<br />
...Node v11.10.1<br />
...Web3.js v1.2.1<br />
<br />
//.Truffle v5.0.2 (core: 5.1.34)<br />
//.Solidity v0.5.0 (solc-js)<br />
//.Node v8.9.0<br />
//.Web3.js v?????<br />
<br />
<h4>package.json</h4>
...truffle": "5.0.2",<br />
...truffle-contract": "3.0.6"<br />
//.truffle": "5.0.2",<br />
//.truffle-contract": "3.0.6"<br />
<br />
<h4>Migration.sol</h4>
...pragma solidity >=0.4.21 <0.7.0;<br />
//.pragma solidity >=0.4.21 <0.6.0;<br />
<br />
<h4>TodoList.sol</h4>
...pragma solidity ^0.5.0;<br />
//.pragma solidity ^0.5.0;<br />
<br />
<h4>truffle-config.js</h4>
...version: "0.5.0", // "0.4.20" Default Truffle's solc<br />
...host: "127.0.0.1",<br />
...port: 7545,<br />
<br />
<h4>Ganache</h4>
hostname 120.0.0.1 - Io0<br />
port number 7545<br />
network id 5777<br />
hardfork Muir Glacier<br />
Ganache/advanced/verbose logs ./build/contracts/<br />
<br />
<h4>truffle</h4>
$ truffle init<br />
$ npm init<br />
<br />
$ truffle compile<br />
<br />
$ truffle migrate<br />
$ truffle console<br />
truffle(development)> todoList = await TodoList.deployed()<br />
truffle(development)> todoList.address<br />
truffle(development)> todoList.taskCount()<br />
<br />
BN {<br />
  negative: 0,<br />
  words: [ 1, <1 empty item> ],<br />
  length: 1,<br />
  red: null }<br />
<br />
truffle(development)> taskCount = await todoList.taskCount()<br />
undefined<br />
truffle(development)> taskCount.toNumber()<br />
0<br />
$ truffle compile<br />
$ truffle migrate --reset<br />
<br />
2557$ truffle console<br />
truffle(development)> todoList = await TodoList.deployed()<br />
<br />
truffle(development)> todoList.address<br />
'0x82cfed2e930808510983E3c5587a4Aa04e5b99B3'<br />
<br />
truffle(development)> todoList.taskCount()<br />
BN {<br />
  negative: 0,<br />
  words: [ 1, <1 empty item> ],<br />
  length: 1,<br />
  red: null }<br />
truffle(development)><br />
undefined<br />
truffle(development)> taskCount = await todoList.taskCount()<br />
undefined<br />
truffle(development)> taskCount.toNumber()<br />
1<br />
// code change<br />
<br />
$ truffle compile<br />
$ truffle migrate --reset<br />
$ truffle console<br />
truffle(development)> todoList = await TodoList.deployed()<br />
truffle(development)> taskCount = await todoList.tasks(1)<br />
<br />
truffle(development)> task = await todoList.tasks(1)<br />
undefined<br />
truffle(development)> task<br />
Result {<br />
  '0':<br />
   BN {<br />
     negative: 0,<br />
     words: [ 1, <1 empty item> ],<br />
     length: 1,<br />
     red: null },<br />
  '1': 'check out dappuniversity.com',<br />
  '2': false,<br />
  id:<br />
}<br />
<br />
npm run dev<br />
