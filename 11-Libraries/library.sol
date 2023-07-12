//SPDX-licence-Identifier: MIT

pragma solidity ^0.8.18;

library Math{
    function add(uint number1, uint number2) public pure returns(uint){
        return number1 + number2;
    }
    
    function subtract(uint number1, uint number2) public pure returns(uint){
        return number1 - number2;
    }
    
    function multiply(uint number1, uint number2) public pure returns(uint){
        return number1 * number2;
    }
    
    function divide(uint number1, uint number2) public pure returns(uint){
        return number1 / number2;
    }
}

/*

    To make a library, you need to create a contract with the library keyword.
    Note that contracts and libraries are not the same thing. Libraries are just contracts that are meant to be used by other contracts.
    Libraries are meant to be deployed only once and then used by other contracts.
    Libraries are meant to be used for utility functions, like math functions, string functions, etc.

*/