// SPDX-License-Identifier: MIT
pragma solidity 0.8.30; //stating our version

contract SimpleStorage {
    int256 public favoriteNumber;
    function store(int256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns (int256) {
         return favoriteNumber;
    }
}

//*a view function that can be accessed only by the current contract
contract One {
    uint256 someNumber;

    // A private view function that can only be accessed by this contract
    function getNumber() private view returns (uint256) {
        return someNumber;
    }

    function callPrivateFunction() public view returns (uint256) {
        return getNumber(); // This function can call the private one
    }
}

