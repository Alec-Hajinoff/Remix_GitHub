// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FundMe {

    function fund() public payable {
        require(msg.value > 1e18);
    }

    //function withdraw() public {

    //}

}