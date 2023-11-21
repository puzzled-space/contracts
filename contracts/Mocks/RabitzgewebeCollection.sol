//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract RabitzgewebeCollection is ERC721URIStorage, Ownable {

    constructor() ERC721 ("Rabitzgewebe NFT", "HRC") {
        for(uint256 i = 1;i<=13;i++)
        _mint(0xaFC7F9065F1003Fa41aB5c24ee0a80b07015d2d0, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmWea2RSJ6zTrUP7SvLtuvfWpd9UJABKUACeepWYaQjyDT/";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmSQKhrkE85XNZLUPCrbsxefgDBQT3adn16TU1n97F8kpr";
    }
}
