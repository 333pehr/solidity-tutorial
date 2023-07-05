// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FunctionsContract{
    string private text = "This is a text";

    //view function
    function getText() public view returns(string memory){
        return text;
    }

    //pure function
    function add(uint number1, uint number2) public pure returns(uint){
        return number1 + number2;
    }


}

/*
    View Functions:
        view functions are functions that are used to read the state of the contract.(Just provide a read-only access to the contract)
        They don't change the state of the contract. 
        They are free to use, this means we don't need to pay for gas costs.

    Pure Functions:
        A pure function is a function that doesn't read or modify the state of the contract.
        Pure functions are used to perform some calculations and return the result. and don't interact with the blockchain.
        Pure function are similar to view functions, but they don't even read the state of the contract.

    Getter Functions:
        Generally when we want to read the state of the contract, we use getter functions.
        Getter function are automatically created for public variables with the same name of the variable. So we don't need to create them manually.
*/