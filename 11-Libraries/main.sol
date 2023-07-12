//SPDX-licence-Identifier: MIT

pragma solidity ^0.8.18;

import "./library.sol";

contract UsingLibraries{
    uint public value;
    
    function calculate(uint number1, uint number2) public{
        value = Math.add(number1, number2);
    }
}

/*
    using libraries is a way to share code between contracts without having to deploy the same code over and over again.
    this is a way to save gas and keep the blockchain clean.
    in this example, we are importing the library.sol file and using the add function from it.

    make sure to check the library.sol file to see how it works.
*/