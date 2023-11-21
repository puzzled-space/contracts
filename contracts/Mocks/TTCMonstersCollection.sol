//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract TTCMonstersCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("TTC Monsters NFT", "TTM") {
        for(uint256 i = 1;i<=18;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmV8a6gWWEV1e9EyVhpa7NGhdi1KKNm1LcQkzfPFiuu979/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmXHYaGdggWeQWG7hW3nFN1GNRpgNnPBNNkrUEjgRwhdTr";
    }
}
