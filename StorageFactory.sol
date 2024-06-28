// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {
   SimpleStorage[] public ListOfSimpleStorageContract;
   
   function CreateSimpleStorageContract() public {
    SimpleStorage newSimpleStorageContract = new SimpleStorage();
    ListOfSimpleStorageContract.push(newSimpleStorageContract);
   }

   function fsStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
    ListOfSimpleStorageContract[_simpleStorageIndex].store(_newSimpleStorageNumber);
   }

   function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
    return ListOfSimpleStorageContract[_simpleStorageIndex].retrieve();
   }

}