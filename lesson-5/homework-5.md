# Homework 3 - Assembly 1

#### 1 - Look at the example of init code in today's notes, see <a href="https://gist.github.com/extropyCoder/4243c0f90e6a6e97006a31f5b9265b94">gist</a>. When we do the CODECOPY operation, what are we overwriting ? (debugging this in Remix might help here).

Answer:
Copies the bytes from the contract into memory.

#### 2 - Could the answer to Q1 allow an optimisation ?

Answer:
Yes, remove the constructor to reduce the size of code copied to memory. Also make `value1` a constant and initialize it with the hard coded value from the constructor. Update the `read` function from `view` to `pure`.

#### 3 - Can you trigger a revert in the init code in Remix ?

Yes, by sending a value when deploying the code it will revert, we can observe the opcodes that check the callvalue to be zero at this line:

```
CALLVALUE DUP1 ISZERO PUSH2 0x10 JUMPI PUSH1 0x0 DUP1 REVERT
```

#### 4 - Write some Yul to:

A - Add 0x07 to 0x08
B - store the result at the next free memory location.
C - (optional) write this again in opcodes

Answer:
A and B:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract YulAddition{

        function addTwo() public pure returns(uint256) {
            assembly {
                mstore(0x80,  add(0x07, 0x08))
                return(0x80, 32)
            }

        }
}
```

C:

```
PUSH1   00
PUSH1   08
PUSH1   07
ADD
PUSH1   80
MSTORE
PUSH1   20
PUSH1   80
RETURN
```

#### 5 - Can you think of a situation where the opcode EXTCODECOPY is used ?

To interact with bytecode from another contract. EXTCODECOPY function is used to copy the code of an external contract to the current contract's storage.

#### 6 - Complete the assembly exercises in this repo <a href="https://github.com/ExtropyIO/ExpertSolidityBootcamp">exercises</a>
