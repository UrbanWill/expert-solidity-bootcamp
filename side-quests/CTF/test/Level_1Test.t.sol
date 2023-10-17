// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.2;

import {Test, console} from "../lib/forge-std/src/Test.sol";
import {Level_1} from "../src/Level_1.sol";

contract Level_1Test is Test {
    Level_1 level_1;

    function setUp() external {
        level_1 = new Level_1();
    }

    function testSolution() public view {
        uint256[2][3] memory matrixX = populateMatrix();
        uint256[2][3] memory matrixY = populateMatrix();

        uint256[2][3] memory result = level_1.solution(matrixX, matrixY);

        console.log(result[0][0]);
        assert(keccak256(abi.encodePacked([[2, 4], [6, 8], [10, 12]])) == keccak256(abi.encodePacked(result)));
    }

    function populateMatrix() public pure returns (uint256[2][3] memory) {
        uint256[2][3] memory matrixX;

        for (uint256 i = 0; i < 3; i++) {
            for (uint256 j = 0; j < 2; j++) {
                // Populate the matrix with some values (e.g., incrementing integers)
                matrixX[i][j] = i * 2 + j + 1;
            }
        }

        return matrixX;
    }
}
