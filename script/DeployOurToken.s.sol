// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract DeployScript is Script {
    uint256 public constant INITIAL_SUPPLY = 100 ether;

    function rnu() external {
        vm.startBroadcast();
        new OurToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}
