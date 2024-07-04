# ERC-721 Non-Fungible Token Standard Library

This project provides a reusable library for implementing ERC-721 compliant non-fungible token (NFT) contracts. It is primarily designed to be used as a library within the metacontract (mc) framework, enabling developers to easily integrate NFT functionality into their projects.

## Overview

The library includes:

- Core ERC-721 implementation (`ERC721Base.sol`)
- Storage schema for ERC-721 tokens (`Schema.sol`)
- Storage access utilities (`Storage.sol`)
- An example implementation of an NFT contract (`MyNFT.sol`)

## Usage

To use this library in your metacontract project:

1. Install the library using Forge:
   ```
   forge install ecdysisxyz/erc721
   ```
2. Import the necessary contracts in your Solidity files:
   ```solidity
   import { ERC721Base } from "ecdysisxyz/erc721/src/main/functions/ERC721Base.sol";
   import { Schema as ERC721Schema } from "ecdysisxyz/erc721/src/main/storage/Schema.sol";
   import { Storage as ERC721Storage } from "ecdysisxyz/erc721/src/main/storage/Storage.sol";
   ```
3. Extend the `ERC721Base` contract and implement your custom logic.

## Example

See `examples/MyNFT.sol` for a basic implementation of an ERC-721 compliant NFT contract using this library.

## Features

- Full ERC-721 standard compliance
- Safe transfer and minting functions
- Approval management
- Enumerable extension support
- Modular and extensible design
- Compatible with the metacontract (mc) framework

## Development Status

This project is currently in active development and should be considered a beta release. While we strive for high-quality code, the implementation is evolving and has not yet undergone a formal audit. Users should exercise caution when integrating this library into production systems.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.

---

# Meta Contract Template
Welcome to the Meta Contract Template! This template is your fast track to smart contract development, offering a pre-configured setup with the [Meta Contract](https://github.com/metacontract/mc) framework and essential tools like the [ERC-7201 Storage Location Calculator](https://github.com/metacontract/erc7201). It's designed for developers looking to leverage advanced features and best practices right from the start.

## Quick Start
Ensure you have [Foundry](https://github.com/foundry-rs/foundry) installed, then initialize your project with:
```sh
$ forge init <Your Project Name> -t metacontract/template
```
This command sets up your environment with all the benefits of the meta contract framework, streamlining your development process.

## Features
- Pre-integrated with meta contract for optimal smart contract development with highly flexible upgradeability & maintainability.
- Includes ERC-7201 Storage Location Calculator for calculating storage locations based on ERC-7201 names for enhanced efficiency.
- Ready-to-use project structure for immediate development start.

For detailed documentation and further guidance, visit [Meta Contract Book](https://mc-book.ecdysis.xyz/).

Start building your decentralized applications with meta contract today and enjoy a seamless development experience!
