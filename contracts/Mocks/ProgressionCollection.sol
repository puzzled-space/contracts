//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract ProgressionCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("Progression NFT", "PGN") {
        for(uint256 i = 1;i<=4;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmY7q8fohKXPSinMGtNyEowLpe7pcxxdYQnNKomxLmwz3E/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmbwkV7WduqaFbS5t6ygBtyEXVXrSUB9bbo9ws3B7ZLRUt";
    }
}
