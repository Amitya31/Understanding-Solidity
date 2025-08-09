// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol"; 

contract StorageFactory {

    //SimpleStorage public simpleStorage;
    // the contract keyword allows to create a new custom type same as struct keyword but it is used for contract
    SimpleStorage[] public listOfSimpleStorageContracts;
    // address[] public listOfSimpleStorageAddresses;

    function createSimpleStorage () public {
        // simpleStorage = new SimpleStorage()
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
        // now solidity knows to deploy this contract
    }

    // interacting with other contracts using a contract
    // calling store function in the SimpleStorage

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public  {
        //Address
        //ABI - Application  Binary Interface 
        SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageContracts[_simpleStorageIndex]); //typeCasting the address ogf the SimpleStorageAddress to SimpleStorageContract
        mySimpleStorage.store(_newSimpleStorageNumber);
        // SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageAddresses[_simpleStorageIndex])
        // listofSimpleStorageAddress[_simpleStorageIndex] stres the desired address and SimpleStorage typeCasts to the contract

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    } 
}