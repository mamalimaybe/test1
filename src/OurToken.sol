// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "@openzepplin/contracts/token/ERC20/ERC20.sol";

contract OurToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("OurToken", "OT") {
        _mint(msg.sender, initialSupply);
    }
}
