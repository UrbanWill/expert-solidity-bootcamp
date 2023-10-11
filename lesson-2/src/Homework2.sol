// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Homework2 {
    /**
     * Custom Errors
     */

    error Homework2__IndexOutOfBounds();

    uint256[] public numbers;

    /**
     * Events
     */

    event ItemRemoved(uint256 indexed itemRemoved, uint256 indexed itemIndex);

    constructor(uint256[] memory luckyNumbers) {
        numbers = luckyNumbers;
    }

    /**
     *
     * @param _index index of item to be removed
     */
    function removeIndexAt(uint256 _index) external {
        if (_index > numbers.length) {
            revert Homework2__IndexOutOfBounds();
        }

        uint256 itemRemoved = numbers[_index];

        numbers[_index] = numbers[numbers.length - 1];
        numbers.pop();

        emit ItemRemoved(itemRemoved, _index);
    }

    /**
     * Setter functions
     */

    function setNumbers(uint256[] memory _numbers) external {
        numbers = _numbers;
    }

    /**
     * Getter functions
     */

    function getNumbersLength() external view returns (uint256) {
        uint256 numbersLength = numbers.length;
        return numbersLength;
    }
}
