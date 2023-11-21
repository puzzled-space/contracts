//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract ERC721Collection is ERC721URIStorage, Ownable {

    string _baseUri;
    string _contractUri;
    constructor(string memory collectionName, string memory collectionToken, address to, uint256 count,
        string memory baseUri, string memory contractUri) ERC721 (collectionName, collectionToken) {
        for (uint256 i = 1; i <= count; i++)
            _mint(to, i);
        _baseUri = baseUri;
        _contractUri = contractUri;
    }

    function _baseURI() internal override view returns (string memory) {
        return _baseUri;
        //"ipfs://QmWPFMVJszstVjjEB4RfiV2JY9hzYAggzTRFsWjLRksVau/";
    }

    function contractURI() public view returns (string memory) {
        return _contractUri;
        //"ipfs://QmXbnG25Xowj7RMCKZVtWX9QWFVLmGPLitt3e8aESPs2Fg";
    }

}
