pragma solidity ^0.8.7;

// Modifier

contract Modifier {
    mapping(address => bool) public whitelist;

    function addToWhitelist() public {
        whitelist[msg.sender] = true;
    }

    //basic

    //with input

    //sandwich guess

}

