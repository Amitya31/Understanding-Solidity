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
    // public keywords allows to see the variable and function to all the nodes on the blockchain
    // we update the favorite number but it is not visible we need to add public in declaration


    uint256 myfavouriteNumber; // 0
   // uint256[] listOfFavouriteNumber;

    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    Person public Amit = Person(8,'amit');

    //Dynamic Array

    Person[] public listOfPeople;

    // mapping(key=>value) Every key is associated to a value
    mapping(string => uint256) public nameToFavouriteNumber;
    
    function store(uint _favouriteNumber) public {
        myfavouriteNumber = _favouriteNumber;
    }

    // view, pure
    // view allows functions only to read and not to update state while pure doesnt allows any of this 
    function retrieve() public view returns(uint256){
        return myfavouriteNumber;
    }

    function addPerson(string memory _name,uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber,_name)); 
        //here the _name is the key which will return the associated favouriteNumber
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

} // keyword for initializing the contract and SimpleStorage is the assigned name for your contract