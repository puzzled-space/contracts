//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract TheShipCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("The Ship NFT", "HRC") {
        for(uint256 i = 1;i<=12;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmZDFrMASLbYqgFo8gLA9nXUhwojDZobopaHChkHXjXoYh/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://Qmbv2Kvv9Tzjw5ucAZD27MQGL1qdHQzDULjiXY5BNBTZCZ";
    }
}
