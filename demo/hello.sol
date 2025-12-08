// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Test {
    string public str1;

    function setValue(string memory para) public {
        str1 = para;
    }

    function getValue() public view returns (string memory) {
        return str1;
    }
}