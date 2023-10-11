// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {Test, console} from "../lib/forge-std/src/Test.sol";
import {DeployHomework2} from "../script/DeployHomework2.s.sol";
import {Homework2} from "../src/Homework2.sol";

contract HomeWork2Test is Test {
    /**
     * Events
     */

    event ItemRemoved(uint256 indexed itemRemoved, uint256 indexed itemIndex);

    Homework2 homework2;

    function setUp() external {
        DeployHomework2 deployer = new DeployHomework2();
        (homework2) = deployer.run();
    }

    function testRemoveIndexAtReverts() public {
        uint256 numbersLength = homework2.getNumbersLength();
        vm.expectRevert(Homework2.Homework2__IndexOutOfBounds.selector);
        homework2.removeIndexAt(numbersLength + 1);
    }

    function testRemoveIndexAtRemovesItem() public {
        uint256 indexToRemove = 3;
        uint256 itemToBeRemoved = homework2.numbers(indexToRemove);

        homework2.removeIndexAt(indexToRemove);

        uint256 intemAtIndexAfterRemoval = homework2.numbers(indexToRemove);
        assert(itemToBeRemoved != intemAtIndexAfterRemoval);
    }

    function testRemoveIndexAtArrayLengthDecreases() public {
        uint256 numberLengthPrev = homework2.getNumbersLength();

        homework2.removeIndexAt(7);

        uint256 numberLengthNext = homework2.getNumbersLength();
        assert(numberLengthNext == numberLengthPrev - 1);
    }

    function testRemoveIndexAtEmitsEvent() public {
        uint256 indexToRemove = 3;
        uint256 itemToBeRemoved = homework2.numbers(indexToRemove);

        vm.expectEmit(true, true, false, false, address(homework2));
        emit ItemRemoved(itemToBeRemoved, indexToRemove);
        homework2.removeIndexAt(indexToRemove);
    }
}
