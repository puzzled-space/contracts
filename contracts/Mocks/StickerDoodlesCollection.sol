//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract StickerDoodlesCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("Sticker DoodlesNFT", "HRC") {
        for(uint256 i = 1;i<=33;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmaLZWqCtxE72tcSxsu9tUhNFZwKeJtUH61gZF7piLT4bt/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmZ3gageSc5jvSPkkMdwCxYGtLM3VLgPvXEiY5og61q2UP";
    }
}
