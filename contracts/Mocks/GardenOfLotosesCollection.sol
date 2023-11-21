//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract GardenOfLotosesCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("Garden Of Lotoses NFT", "GOL") {
        for(uint256 i = 1;i<=12;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmWPFMVJszstVjjEB4RfiV2JY9hzYAggzTRFsWjLRksVau/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmXbnG25Xowj7RMCKZVtWX9QWFVLmGPLitt3e8aESPs2Fg";
    }
}
