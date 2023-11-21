//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract NectarinianCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("Nectarinian NFT", "NCN") {
        for(uint256 i = 1;i<=5;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmYKkDF9hhhfy4Q6ASZBiWT5RzTGn39moinLFR2PCroKfp/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmZkCyBKUxnrYYb7wGdFEKLkDBsJySg1NfEg4A2DMM9NcP";
    }
}
