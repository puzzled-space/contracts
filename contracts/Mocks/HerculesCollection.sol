//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract HerculesCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("Hercules NFT", "HRC") {
        for(uint256 i = 1;i<=14;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmZkA4WogRqacj62cQebQCgsh7QrEpiTJUDWWLciz1tvJ7/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmXWzctsraWGeUh2HYJpBEihn249Yzk1hLn8y1M72FZysb";
    }
}
