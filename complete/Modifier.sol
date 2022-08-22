pragma solidity ^0.8.7;

// Modifier

contract Modifier {
    mapping(address => bool) public whitelist;

    function addToWhitelist(address userAddress) public {
        whitelist[userAddress] = true;
    }

    // modifier checkWhitelist() {
    //     require(whitelist[msg.sender] == true, "Error");
    //     _;
    // }

    // function somePrivacy() public checkWhitelist{
    //     //....
    // }

    //with input
    // modifier checkWhitelist(address userAddress) {
    //     require(whitelist[userAddress] == true, "Error");
    //     _;
    // }

    // function somePrivacy(address userAddress) public checkWhitelist(userAddress){
    //     //....
    // }

    //sandwich guess

    int public count = 0;

    modifier sandwich() {
        count += 10;  // count = 10;
        _; 
        count *= 2; // count = 22;
    }

    function addCount() public sandwich{
        count += 1; // count = 11;
        //.....
    }

}

