//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract VenetianMasqueradeCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("Venetian Masquerade NFT", "HRC") {
        for(uint256 i = 1;i<=10;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmeAWBvcQYjaKVbdopYGuUwv4HkayjibRytF7wcjMwW4wm/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmS93zcGr5CrnCVLYnK8w3SpawnsTuZgob8buw1v7VQM73";
    }
}
