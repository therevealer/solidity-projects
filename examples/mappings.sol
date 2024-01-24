// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IntegerMappingExample {
    mapping(address => uint256) public addressToBalance;

    function deposit(uint256 amount) public {
        addressToBalance[msg.sender] += amount;
    }

    function withdraw(uint256 amount) public {
        require(addressToBalance[msg.sender ] >= amount,"Insufficient Balance");
        addressToBalance[msg.sender] -= amount;
    }
}