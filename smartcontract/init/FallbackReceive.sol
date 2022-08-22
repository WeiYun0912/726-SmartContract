// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FallbackReceive {
    event Log(string funcName, address sender, uint256 value, bytes data);
}
