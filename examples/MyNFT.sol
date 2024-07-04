// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import { ERC721Base } from "ecdysisxyz/erc721/src/main/functions/ERC721Base.sol";
import { Schema as ERC721Schema } from "ecdysisxyz/erc721/src/main/storage/Schema.sol";
import { Storage as ERC721Storage } from "ecdysisxyz/erc721/src/main/storage/Storage.sol";
import { Schema } from "../storage/Schema.sol";
import { Storage } from "../storage/Storage.sol";

contract MyNFT is ERC721Base {
    constructor(string memory name_, string memory symbol_) {
        ERC721Schema.GlobalState storage s = ERC721Storage.state();
        s.name = name_;
        s.symbol = symbol_;
    }

    function mint(address to, uint256 tokenId) external {
        _safeMint(to, tokenId);
    }

    function burn(uint256 tokenId) external {
        require(_isApprovedOrOwner(msg.sender, tokenId), "ERC721: caller is not token owner or approved");
        _burn(tokenId);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://api.mynft.com/tokens/";
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireMinted(tokenId);
        return string(abi.encodePacked(_baseURI(), tokenId));
    }
}
