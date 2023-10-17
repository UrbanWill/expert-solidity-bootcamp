// Level 1 - Matrix Addition
// Write a function that adds two matrices returns the result. To keep things simple the array sizes will be fixed sizes of 2x3 (uint256[2][3]). Take a look at Wikipedia if you need help understanding matrix addition. Your solution should implement the following interface:

// interface Isolution1 {
//     function solution(
//         uint256[2][3] calldata x,
//         uint256[2][3] calldata y
//     ) external pure returns (
//         uint256[2][3] memory
//     );
// }

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
