pragma solidity ^0.8.7;

// Struct

contract Struct {
    struct Food {
        string name;
        int price;
        int amount;
        address seller; //msg.sender
    }

    Food[] public foods; //array

    function createFood() public {
        //First
        Food memory apple = Food("apple",50,1,msg.sender);//memory storage
        foods.push(apple);
        
        //Second
        Food memory soup = Food({
            name : "soup",
            amount : 1,
            price : 50,
            seller : msg.sender
        });
        foods.push(soup);
        
        //Third
        foods.push(Food("apple",50,1,msg.sender));
    }

    function getFoods() public view returns(Food[] memory){
        return foods;
    }
}

