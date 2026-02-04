# Donation Smart Contract

## Overview
This project is a simple and transparent donation smart contract built using Solidity.  
It allows anyone to donate ETH to a campaign, while the contract owner can withdraw the collected funds.

This contract is suitable for:
- Charity donations
- Creator tip jars
- Open-source project funding
- Community support campaigns

Once donated, funds are **non-refundable**.

---

## Features
- Accepts ETH donations from any wallet
- Tracks total donated amount
- Records individual donor contributions
- Owner-only withdrawal functionality
- Event emission for frontend & Etherscan tracking
- Simple and gas-efficient design

---

## Tech Stack
- Solidity ^0.8.31
- Remix IDE
- MetaMask
- Ethereum Testnet (Sepolia)

---

## Contract Details
The contract stores:
- Owner address (deployer)
- Total amount of ETH donated
- Individual donation amounts per address

A mapping is used to maintain transparency by allowing anyone to check their donation history.

---

## Donation Process
1. A user calls the `donate()` function with ETH.
2. The contract verifies that ETH amount is greater than zero.
3. The donation is recorded on-chain.
4. A `Donated` event is emitted.

Donations are permanent and cannot be refunded.

---

## Withdrawal Process
- Only the contract owner can withdraw funds.
- The owner can withdraw the full contract balance at any time.
- Funds are transferred directly to the owner's wallet.

---

## Events
The contract emits the following event:

- `Donated(address donor, uint amount)`  
  Used to track donations on Etherscan and frontend applications.

---

## Deployment
The contract can be deployed using Remix IDE.

### Steps
1. Open Remix IDE.
2. Create a new file `Donation.sol`.
3. Paste the contract code.
4. Compile using Solidity ^0.8.31.
5. Connect MetaMask using Injected Provider.
6. Select Sepolia test network.
7. Deploy and confirm the transaction.

---

## Network Information
- Network: Ethereum Sepolia Testnet
- Contract Type: Donation Smart Contract
- Deployment Tool: Remix IDE
- Wallet: MetaMask

---

## Security Notes
- Uses Solidity ^0.8.x with built-in overflow checks.
- No external contract calls during donation.
- State updated before ETH transfer.
- Tested using Remix IDE.

---

## License
MIT License
