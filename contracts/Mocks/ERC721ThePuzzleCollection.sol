//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC721ThePuzzleCollection is ERC721URIStorage, Ownable {

    constructor() ERC721("Puzzled NFT", "PZL") {
        for(uint256 i = 1;i<=30;i++)
        _mint(0x39D2ce39Ff405Ac063aE999a0B79E997ED98f396, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmaFRfrRufYoBYtGYPPuMbkVsRzfCbRiKT9HA2HK2T32wW/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmajqeK4aQXhLCha5u7U9RvHrDD8CKTJZm8yKuiZAcGJKs";
    }
}
