// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.2;

import {Script} from "../lib/forge-std/src/Script.sol";
import {Homework2} from "../src/Homework2.sol";

contract DeployHomework2 is Script {
    function run() external returns (Homework2) {
        vm.startBroadcast();
        Homework2 homework2 = new Homework2();
        vm.stopBroadcast();
        return homework2;
    }
}
