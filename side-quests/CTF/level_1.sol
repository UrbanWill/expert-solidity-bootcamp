// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.2;

contract Level_1 {
    function solution(uint256[2][3] calldata x, uint256[2][3] calldata y)
        external
        pure
        returns (uint256[2][3] memory)
    {
        uint256[2][3] memory result;
        uint8 length1 = uint8(x.length);
        for (uint256 i = 0; i < length1; i++) {
            uint8 length2 = uint8(x[i].length);
            for (uint256 j = 0; j < length2; j++) {
                result[i][j] = x[i][j] + y[i][j];
            }
        }
        return result;
    }
}

// uint256[2][3] calldata matrixX = [
//     [1, 2],
//     [3, 4],
//     [5, 6]
// ];

// uint256[2][3] calldata matrixY = [
//     [7, 8],
//     [9, 10],
//     [11, 12]
// ];

// [ [1, 2],     [3, 4],     [5, 6] ]  [     [7, 8],     [9, 10],     [11, 12] ]
