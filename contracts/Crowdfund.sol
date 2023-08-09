// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Crowdfund {

  address public owner;
  mapping(address => uint256) contributors;
  
  constructor() {
    owner = msg.sender;
  }

  function getFundAmount() view public returns(uint){
    return address(this).balance;
  }

  function addAmount() payable public{
    contributors[msg.sender] = msg.value;
  }
}
