// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "contracts/1_Storage.sol";

contract ExtraStorage is Storage {
    function store (uint256 _storageNumber) public override {
        number = _storageNumber + 5;
    }
}