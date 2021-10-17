// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC721Tradable.sol";

/**
 * @title OwnThisDate
 * Date - a contract for the dates
 */
contract OwnThisDate is ERC721Tradable {
    constructor(address _proxyRegistryAddress)
        ERC721Tradable("OwnThisDate", "DATE",_proxyRegistryAddress)
    {}

   

    function baseTokenURI() virtual public pure override returns (string memory){
        //Change to our custom hosting, either IPFS or firebase
        return "https://opensea-creatures-api.herokuapp.com/api/creature/";
    }


}
