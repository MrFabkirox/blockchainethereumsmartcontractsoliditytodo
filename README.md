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