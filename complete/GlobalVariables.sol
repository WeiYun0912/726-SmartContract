pragma solidity ^0.8.7;
// Global Variables

//msg.sender, block.timestamp, block.number, msg.balance, msg.value
//address

//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
//Gwei

contract GlobalVariables {
    address public sender;
    uint public blockTime;
    uint public blockNumber;
    uint public balance;
    uint public value;
    uint public contractBalance;

    function setGlobalVariables() public payable{
        sender = msg.sender;
        blockTime = block.timestamp;
        blockNumber = block.number;
        balance = msg.sender.balance;
        value = msg.value;
    }

    function getBalance() public payable{
        contractBalance = address(this).balance; // address(this) -> 智能合約的address(地址)
    }
}

