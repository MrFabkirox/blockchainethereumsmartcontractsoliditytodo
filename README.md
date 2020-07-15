// ex:  "0.4.20". (Default: Truffle's installed solc)

$ truffle migrate
$ truffle console
truffle(development)> todoList = await TodoList.deployed()
truffle(development)> todoList.address
truffle(development)> todoList.taskCount()

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
   BN {
     negative: 0,
     words: [ 1, <1 empty item> ],
     length: 1,
     red: null },
  content: 'check out dappuniversity.com',
  completed: false }
truffle(development)>

