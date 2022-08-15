pragma solidity ^0.8.7;
// Global Variables

//msg.sender, block.timestamp, block.number, msg.balance, msg.value

contract GlobalVariables {
    address public sender;
    uint public blockTime;
    uint public blockNumber;
    uint public balance;
    uint public value;

    function setGlobalVariables() public payable {
        sender = msg.sender;
        blockTime = block.timestamp;
        blockNumber = block.number;
        balance = msg.sender.balance;
        value = msg.value;
    }
}

