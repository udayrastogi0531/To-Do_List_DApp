# ✅ To-Do List DApp

![Deployed Contract Screenshot](./Screenshot%202025-06-19%20150012.png)

---

## 📘 Project Description
A **decentralized application (DApp)** for managing a personal to-do list using Ethereum (Core Testnet in this case).  
This smart contract allows users to **create**, **toggle**, and **view tasks** in a **secure, immutable, and transparent** manner on the blockchain.

---

## 🎯 Project Vision
To provide a **simple and efficient** task management solution backed by blockchain, promoting **transparency, decentralization, and user control**.

---

## 🌟 Key Features

- 💡 **Create Tasks:** Add tasks to your personal list on-chain.  
- 🔄 **Toggle Completion:** Mark tasks as completed or pending.  
- 🔍 **View Task Details:** Fetch task info directly from the smart contract.  
- 📤 **Event Logs:** Events are emitted on task creation and completion for real-time updates.

---

## 💻 Smart Contract Code (Solidity)

```solidity
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

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount
