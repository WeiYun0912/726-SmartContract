pragma solidity ^0.8.7;
// Mapping

// Case

contract Mapping {
    mapping(address => bool) public whitelist;

    //struct + mapping
    struct UserInfo {
        string name;
        address user;
        uint balance;
    }

    mapping(address => UserInfo) public userInfo;

    //double mapping
    mapping(address => mapping(address => bool)) public isFriend;

    //enum + struct + mapping
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

    mapping(address => buyer) bOI; //buyerOrderInfo
}

