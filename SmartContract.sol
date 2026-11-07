// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title StudentTaskManager
/// @notice A simple per-wallet task manager for the Sepolia testnet.
contract StudentTaskManager {
    struct Task {
        string description;
        bool completed;
    }

    // Each wallet address has its own private task list.
    mapping(address => Task[]) private tasks;

    event TaskAdded(address indexed student, uint256 indexed taskId, string description);
    event TaskStatusChanged(address indexed student, uint256 indexed taskId, bool completed);

    /// @notice Add a task for the connected wallet.
    function addTask(string calldata _description) external {
        require(bytes(_description).length > 0, "Task cannot be empty");
        require(bytes(_description).length <= 200, "Task is too long");

        tasks[msg.sender].push(Task({
            description: _description,
            completed: false
        }));

        emit TaskAdded(msg.sender, tasks[msg.sender].length - 1, _description);
    }

    /// @notice Switch a task between completed and incomplete.
    function toggleTask(uint256 _taskId) external {
        require(_taskId < tasks[msg.sender].length, "Task does not exist");

        tasks[msg.sender][_taskId].completed = !tasks[msg.sender][_taskId].completed;
        emit TaskStatusChanged(msg.sender, _taskId, tasks[msg.sender][_taskId].completed);
    }

    /// @notice Read one task belonging to the connected wallet.
    function getTask(uint256 _taskId)
        external
        view
        returns (string memory description, bool completed)
    {
        require(_taskId < tasks[msg.sender].length, "Task does not exist");
        Task storage task = tasks[msg.sender][_taskId];
        return (task.description, task.completed);
    }

    /// @notice Return the number of tasks belonging to the connected wallet.
    function getTaskCount() external view returns (uint256) {
        return tasks[msg.sender].length;
    }
}
