# Student Task Manager (TaskChain)

## About the Project
This is a simple blockchain-based task manager made for my MG3012 Blockchain Technology for Business assignment.

The purpose of this project is to allow students to add tasks, view their tasks, and mark them as completed using a smart contract.

## Technologies Used
- Solidity – Smart contract
- HTML – Webpage structure
- CSS – Styling
- JavaScript – Frontend functionality
- Ethers.js – Connecting the webpage to MetaMask and the blockchain
- MetaMask – Wallet connection
- Sepolia – Test network

## Smart Contract
The smart contract has four main functions:
1. `addTask()` – Adds a new task.
2. `toggleTask()` – Changes a task's completion status.
3. `getTask()` – Retrieves a specific task.
4. `getTaskCount()` – Returns the total number of tasks.

Each wallet has its own separate task list.

## Contract Details
**Network:** Sepolia Testnet

**Contract Address:**
`0xb7566447804df74319F1907368b99954ce778e81`

## How to Run
1. Open the project folder in VS Code.
2. Start the webpage using Live Server.
3. Connect your MetaMask wallet.
4. Make sure MetaMask is set to the Sepolia network.
5. Enter the deployed contract address and click Load Contract.
6. You can now add tasks and mark them as completed.

## Project Files
- `SmartContract.sol` – Solidity smart contract.
- `index.html` – Main webpage.
- `style.css` – Page styling.
- `task-illustration.svg` – Illustration used on the webpage.
- `screenshots/` – Screenshots of the project working.