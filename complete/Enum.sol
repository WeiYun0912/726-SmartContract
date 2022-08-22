pragma solidity ^0.8.7;
// Enum

//https://github.com/WeiYun0912/SmartContracts/tree/main/Features/Enum

contract Enum {
    enum ShippingStatus {
        None, //0
        Pending, //1
        Shipped, //2
        Completed, //3
        Canceled //4
    }

    ShippingStatus public shippingStatus;

    function placeAnOrder() public {
        require(shippingStatus == ShippingStatus.None,"Error Status ...");
        shippingStatus = ShippingStatus.Pending;
    }
}

