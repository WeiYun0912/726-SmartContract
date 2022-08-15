pragma solidity ^0.8.7;
// Enum

//https://github.com/WeiYun0912/SmartContracts/tree/main/Features/Enum

contract Enum {
    enum ShippingStatus {
        None,
        Pending,
        Shipped,
        Completed,
        Canceled
    }

    ShippingStatus public shippingStatus;
}

