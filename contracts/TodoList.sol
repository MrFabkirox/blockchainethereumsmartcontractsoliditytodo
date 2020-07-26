pragma solidity ^0.5.0;

contract TodoList {
  uint256 public taskCount = 0;

  struct Task {
      uint256 id;
      string content;
      bool completed;
  }

  mapping(uint => Task) public tasks;

  event TaskCreated(
    uint id,
    string content,
    bool completed
  );

  constructor() public {
      createTask("Check out dappuniversity.com");
  }

  event TaskCompleted(
    uit id,
    bool completed
  )

  function createTask(string memory _content) public {
    taskCount++;
    tasks[taskCount] = Task(taskCount, _content, false);
    emit TaskCreated(taskCount, _content, false);
  }

  function toggleCompleted(uint _id) public {
    Task memory _task = tasks[_id];
    _task.comleted = !_task.completed;
    tasks[_id] = _task;
    emit TaskCompleted(id, _task.completed);
  }
}
