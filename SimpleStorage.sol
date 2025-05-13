// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0; //stating our version

contract SimpleStorage {

    uint256 myFavoriteNumber;

    //uint256[] listOfFavoriteNumbers; 

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping (string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
         return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}







//EXERCISES!

contract SimpleStorageOne {

    mapping(address => uint256) public balance;

    function setBalance(uint256 _amount) public {
        balance[msg.sender] = _amount; // Stores balance for the sender
    }

    function getMyBalance() public view returns (uint256) {
        return balance[msg.sender]; // Retrieves sender's balance
    }
}