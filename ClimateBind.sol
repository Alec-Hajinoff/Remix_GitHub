// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract UserOne {

    uint256 triggerCondition;

    struct User {
        uint256 trigger;
        string name;
    }
    // uint256[] public anArray;
    User[] public listOfUsers;

    mapping(string => uint256) public nameTotrigger;

    function store(uint256 _trigger) public virtual {
        triggerCondition = _trigger;
    }

    function retrieve() public view returns (uint256) {
        return triggerCondition;
    }

    function addPerson(string memory _name, uint256 _trigger) public {
        listOfUsers.push(User(_trigger, _name));
        nameTotrigger[_name] = _trigger;
    }
}
