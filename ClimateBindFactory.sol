// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {UserOne} from "./ClimateBind.sol";

contract UserFactory {
    UserOne[] public userContracts;

    function createUserOneContract() public {
        UserOne newUserOne = new UserOne();
        userContracts.push(newUserOne);
    }
}
