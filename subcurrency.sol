// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.22;

// The contract allows only its creator to create new coins
//Anyone can send coins to each other without a need for registering with a username and a password
contract Coin{

    //the keyword public it's making the variables
    // here accessible from other contracts
    address public minter;
    mapping (address => uint) public balances;

    // ctor only runs when we deploy contract
    constructor(){
        minter = msg.sender;
    }

    //make new coins and send them to an address
    //only owner can send these coins
    function mint(address reciever, uint amount)public{
        require(msg.sender==minter);
        balances[reciever] +=  amount;        
    }

    
}