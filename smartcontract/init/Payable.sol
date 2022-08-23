// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Payable {
    mapping(address => uint256) public balances;

    function deposit() public{ }

    function sendEther(address _receiver) public { }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
