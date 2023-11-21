//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract RaccoonsCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("Raccoons In A Subway NFT", "RIS") {
        for(uint256 i = 1;i<=36;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmNiKUmE5RCgCa3CEf5iexp6bGCwf3fwmihe27WaJ4r6v6/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmZgGMpJuynBBDqVVfKaH7nTWxAPiw8FSDQEuVG9VrwLg9";
    }
}
