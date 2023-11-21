//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC721HeartAttack is ERC721URIStorage, Ownable {

    constructor() ERC721("Heart Attack", "Heart Attack") {
        for(uint256 i = 1;i<=18;i++)
        _mint(msg.sender, i);
    }

   function _baseURI() internal override pure  returns (string memory) {
        return "ipfs://QmSuX1EDxCG7tnci9b4K6xQccgC4WebuN1q4reR7EdiMLL/nft";
    }

    function contractURI() public pure returns (string memory) {
        return "ipfs://QmW5BYwweTZvoAiJwePaQkU2EQfehNJuKzrdMGjq6qKzRx";
    }
}
