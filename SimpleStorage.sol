//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // Basic types : uint ,boolean ,int ,address, bytes
    // variables are the holder for values which are any of these types
    // in int and uint we can specify bits by default it is 256
    // uint is unsigned and int is signed

    // bool hasFavouriteNumber = true;
    // uint256 favouriteNumber = 300;
    // string name = "Amit";
    // bytes32 favouriteBytes32="I'm amit yadav";
    // int256 favouriteNumber2 = 200;

    // function or method is an important part of solidity it is executed when it is called
    // it is identified by the keyword function

    // we update the favorite number but it is not visible we need to add public in declaration


    uint256 public favouriteNumber;
    function store(uint _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    // view, pure
    // view allows functions only to read and not to update state while pure doesnt allows any of this 
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }
} // keyword for initializing the contract and SimpleStorage is the assigned name for your contract