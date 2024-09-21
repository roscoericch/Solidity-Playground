// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title StorageFactory
 * @dev Create Store Contract & store,retrieve value in contracts
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

import "contracts/1_Storage.sol";

contract StorageFactory {
    Storage[] public storageArray;
    function createSimpleStorageContract() public {
        Storage newStorage = new Storage();
        storageArray.push(newStorage);
    }

    function storeNumber(uint256 _storageIndex, uint256 number) public {
        Storage targetStorage = storageArray[_storageIndex];
        targetStorage.store(number);
        storageArray[_storageIndex] = targetStorage;
    }

    function getStoredValue(uint256 _storageIndex) public view returns (uint256){
        Storage targetStorage = storageArray[_storageIndex];
        return targetStorage.retrieve();
    }
}