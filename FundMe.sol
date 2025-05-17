// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;

    uint256 public minimumUsd = 5e18;

    address[] public funders;

    mapping (address => uint256) public addressToAmountFunded;

    function fund() public payable {
        require(msg.value.getConversionRate() >= minimumUsd, "You must request more than 5 USD");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public {
        for (uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }

        funders = new address[](0);
        payable(msg.sender).transfer(address(this).balance);
        bool sendSuccess = payable(msg.sender).send(address(this).balance);
        require (sendSuccess, "Failed to send ether");
        (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require (callSuccess, "Call failed");
    }
}