// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "./ERC20.sol";
import "./Ownable.sol";


contract OSkToken is ERC20 , Ownable {

    uint256 private _mintLimit = 200000000;
    constructor(address masterWallet) ERC20("OSK Token", "OSK") Ownable(masterWallet) {

        require(masterWallet != address(0),"OSkToken: masterWallet is the zero address");
        _mint(masterWallet,_mintLimit*10**uint256(decimals()));            
    }
}