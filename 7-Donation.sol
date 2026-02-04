// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Donation {

    address public owner;
    uint public totalDonated;

    mapping (address => uint) public donations;

    event Donated(address indexed donor, uint amount);

    constructor() {
        owner = msg.sender;
    }

    function donate() public payable {
        require(msg.value > 0, "Send ETH");

        donations[msg.sender] += msg.value;
        totalDonated += msg.value;

        emit Donated(msg.sender, msg.value);
    }

    function withdraw() public {
        require(msg.sender == owner, "Not owner");

        uint amount = address(this).balance;
        (bool success,) = payable(owner).call{value: amount}("");
        require(success, "ETH transfer failed");
    }
    
}