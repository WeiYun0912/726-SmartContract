pragma solidity ^0.8.7;

contract DataLocation{
    //使用者A -> 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    struct User {
        string name;
        uint balance;
    }

    mapping(address => User) public users;

    function addUserBalance(uint _balance) public returns(uint){
        User storage user = users[msg.sender]; //storage or memory
        //memory -> 暫存的 不會保留到區塊鏈, 通常用來判斷使用者的狀態
        //storage -> 會被保留到區塊鏈
        user.balance += _balance; 
        return user.balance;
    }
}
