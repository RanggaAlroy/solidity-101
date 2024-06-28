// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18 ;

import { SimpleStorage } from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // to overide imported function we have to add virtual to the function and override to new function
    function store(uint256 _newNumber) public override {
        favoriteNumber = _newNumber +5;
    }
}