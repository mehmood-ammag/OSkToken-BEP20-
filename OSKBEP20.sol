// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "./ERC20.sol";
import "./Ownable.sol";

contract OSkToken is ERC20 , Ownable {

    constructor(address masterWallet) ERC20("OSK Token", "OSK") {

        _mint(masterWallet,200000000*10**uint256(decimals()));
        
    }
}