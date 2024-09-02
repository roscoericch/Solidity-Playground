// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Greet {
    string public myName;
    struct Visitor {string name;int visits;}
    Visitor[] visitors;
    function greet(string memory name) public returns (string memory){
        myName = name;
        if(visitors[name])
        visitors.push(Visitor(name,1));
        return string(abi.encodePacked("Hello ,",name));
    }
}