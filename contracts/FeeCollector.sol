// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;


contract FeeCollector {
    // specifying the owner variable 
    // of the smart contract
    // create the owner of the smart contract
    address public owner;

    //specifying the owner of the smart contract
    uint256 public balance; 

    // assign the owner of the smart contract
    constructor() {
        // assign the owner of the smart contract
        // msg.sender (public variable) sees the public address of the sender
        owner = msg.sender;
    }

    // to receive payment we need to create a receive function
    // which must be payable
    // to send ether to the smart contract
    receive() payable  external {
        // msg.value access how much ether was sent to the
        // smart contract 
        balance += msg.value;
    }

    function withdraw(uint amount, address payable addressDestination) public {
        addressDestination.transfer(amount);
        balance -= amount;
    }


}