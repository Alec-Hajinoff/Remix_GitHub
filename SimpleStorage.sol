// SPDX-License-Identifier: MIT
pragma solidity 0.8.30; //stating our version

contract SimpleStorage {

    uint256 myFavoriteNumber;

    //uint256[] listOfFavoriteNumbers; 

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    Person public pat = Person({favoriteNumber: 7, name: "Pat"});

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
         return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
}







//EXERCISES!

contract AnimalsList {

    struct Animal {
        string name;
    }

    Animal[] public listOfAnimals;

    constructor() {

        listOfAnimals.push(Animal("Lion"));
        listOfAnimals.push(Animal("Elephant"));
        listOfAnimals.push(Animal("Giraffe"));
    }

    function addAnimal(string memory _name) public {
        listOfAnimals.push(Animal(_name));
    }

    function getAnimals() public view returns (Animal[] memory) {
        return listOfAnimals;
    }
    
}