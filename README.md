# Minimal ERC-20 Token (Foundry)

This repository provides a high-quality, audited-standard implementation of an ERC-20 token. It leverages the industry-standard OpenZeppelin libraries and is designed for the Foundry development environment.

## Features
- **Standard Compliant**: Fully compatible with the ERC-20 interface.
- **Gas Optimized**: Built with Solidity 0.8.20+ for efficient execution.
- **Secure**: Inherits tested logic from OpenZeppelin.
- **Flat Structure**: All essential logic contained within the root for easy auditing.

## Getting Started
1. Install Foundry: `curl -L https://foundry.paradigm.xyz | bash`
2. Compile: `forge build`
3. Test: `forge test`

## Deployment
Update the constructor arguments in the script to set your token name and symbol.
