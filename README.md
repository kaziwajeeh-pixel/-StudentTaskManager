# Student Task Manager — MG3012 Assignment 2

A mini decentralized application (dApp) built with Solidity, HTML, CSS, JavaScript, ethers.js v6, MetaMask, and the Sepolia testnet.

## Features

- Connect a MetaMask wallet on Sepolia.
- Add tasks using a blockchain write transaction.
- Read the connected wallet's task count and task descriptions.
- Mark tasks complete or pending using a blockchain write transaction.
- Each wallet address has a separate task list.

## Project files

- `SmartContract.sol` — Solidity smart contract.
- `index.html` — single-page frontend and JavaScript integration.
- `style.css` — responsive styling.
- `task-illustration.svg` — local illustration used by the page.
- `screenshots/` — add your three genuine assignment screenshots here.

## Requirements

- MetaMask browser extension.
- Sepolia test ETH for transaction gas.
- Remix IDE: https://remix.ethereum.org/
- A modern browser with internet access (ethers.js is loaded from a CDN).

## Deploy the smart contract

1. Open Remix IDE and create a file named `SmartContract.sol`.
2. Copy the contents of this project's `SmartContract.sol` into Remix.
3. In the Solidity Compiler tab, select compiler version `0.8.20` or a compatible newer `0.8.x` version and compile.
4. Open the Deploy & Run Transactions tab.
5. Connect MetaMask and select **Injected Provider - MetaMask**.
6. Confirm MetaMask is set to **Sepolia** (chain ID 11155111).
7. Select `StudentTaskManager` and click **Deploy**.
8. Confirm the deployment transaction in MetaMask.
9. After confirmation, copy the deployed contract address from Remix. Keep this address for the frontend, README, GitHub, and Classroom submission.

## Run the frontend

1. Open `index.html` in a browser. If your browser blocks local scripts or you prefer a local server, run `python -m http.server 8000` from this folder and visit `http://localhost:8000`.
2. Make sure MetaMask is unlocked and connected to Sepolia.
3. Click **Connect MetaMask** and approve the connection.
4. Paste your deployed contract address into the contract address field and click **Load contract**.
5. Add a task. Approve the transaction in MetaMask and wait for confirmation.
6. Use the task's button to mark it complete or pending. Approve that transaction too.

## Contract functions

| Function | Access | Purpose |
|---|---|---|
| `addTask(string)` | Write | Adds a task for `msg.sender`. |
| `toggleTask(uint256)` | Write | Toggles the completion status of a task owned by `msg.sender`. |
| `getTask(uint256)` | Read | Returns a task description and completion status. |
| `getTaskCount()` | Read | Returns the number of tasks owned by `msg.sender`. |

## Contract address

**Sepolia contract address:** `0xb7566447804df74319F1907368b99954ce778e81`

Do not leave the placeholder in your final submitted README. Replace it after deploying your own contract.

## Screenshots required for submission

Add three genuine screenshots to the `screenshots/` folder:

1. `deployment.png` — Remix showing the successfully deployed contract and its address.
2. `wallet-connection.png` — the frontend showing the connected wallet and loaded contract.
3. `transaction.png` — the frontend showing a successfully confirmed task transaction (ideally also show the task in the list).

The included folder contains a reminder file only. Capture these screenshots from your own successful deployment and interaction; do not submit fabricated screenshots.

## Important notes

- The frontend ABI must match the deployed Solidity contract.
- The frontend checks that MetaMask is connected to Sepolia.
- The contract stores tasks separately for each wallet address. Use the same wallet to see the same task list.
- This is an educational demonstration, not a production-ready task management system.
- A transaction can fail if the wallet has no Sepolia test ETH, the wrong network is selected, or the address/ABI does not match.
