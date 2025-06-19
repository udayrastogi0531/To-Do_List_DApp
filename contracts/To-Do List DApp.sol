// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToDoListDApp {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    event TaskCreated(uint id, string content, bool completed);
    event TaskCompleted(uint id, bool completed);

    // Function to create a new task
    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    // Function to mark a task as completed
    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }

    // Function to get task details
    function getTask(uint _id) public view returns (uint, string memory, bool) {
        Task memory t = tasks[_id];
        return (t.id, t.content, t.completed);
    }
}
