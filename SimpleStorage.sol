// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity versions
    
contract SimpleStorage {
    // favoriteNumber has 0 value because we did not put number on initial
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    struct Person {
        uint256 personNumber;
        string name;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public  nameToFavoriteNumber;

    // view, pure
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }


  function addPerson(string memory _name, uint256 _personNumber) public {
        // Push new person to the list
        listOfPeople.push(Person(_personNumber, _name));
        // Map the name to the favorite number
        nameToFavoriteNumber[_name] = _personNumber;
    }
}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}