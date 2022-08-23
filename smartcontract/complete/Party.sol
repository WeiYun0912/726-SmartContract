pragma solidity ^0.8.7;

//https://eth-converter.com/

contract Party {
    int public totalMember = 0;

    mapping(address => bool) public partyChecklist;

    event PartyMember(string memberName, address indexed memberAddress);

    modifier checkMemberInParty(address member) {
        require(partyChecklist[member] == false, "Already in party.");
        _;
    }

    function joinParty(string memory memberName) public payable checkMemberInParty(msg.sender){
        require(msg.value == 0.1 ether, "Not enough eth");
        partyChecklist[msg.sender] = true;
        emit PartyMember(memberName,msg.sender);
        totalMember += 1;
    }
}
