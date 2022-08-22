pragma solidity ^0.8.7;
// Mapping

// Case

contract Mapping {
    mapping(address => bool) public whitelist;

    function addToWhitelist() public {
        whitelist[msg.sender] = true;
    }

    function checkWhitelist() public {
        require(whitelist[msg.sender] == true, "Error");
        // ......
    }

    //struct + mapping
    struct UserInfo {
        string name;
        address user;
        uint balance;
    }

    mapping(address => UserInfo) public userInfo;

    function createUser() public {
        userInfo[msg.sender] = UserInfo({
            name : "wei",
            user : msg.sender,
            balance : 1000
        });
    }



    //double mapping

    //A使用者跟B使用者 是不是朋友 // 使用者 -> address
    mapping(address => mapping(address => bool)) public isFriend;


    // A使用者 -> 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    // B使用者 -> 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    function addFriend(address friend) public {
        isFriend[msg.sender][friend] = true;
    }

    // //enum + struct + mapping
    enum ShippingStatus {
        None,
        Pending,
        Shipped,
        Completed,
        Canceled
    }

    struct buyer {
        address buyerAddress;
        ShippingStatus shippingStatus;
    }

    //使用者A -> 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    mapping(address => buyer) public bOI; //buyerOrderInfo

    function placeAnOrder(address buyerAddress) public {
        require(bOI[buyerAddress].shippingStatus == ShippingStatus.None, "Order Status Error");
        bOI[buyerAddress].shippingStatus = ShippingStatus.Pending;
    }
}

