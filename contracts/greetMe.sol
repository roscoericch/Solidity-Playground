// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Greet {
    string public myName;

    function greet(string memory name) public returns (string memory){
        myName = name;
        return string(abi.encodePacked("Hello ,",name));
    }
}