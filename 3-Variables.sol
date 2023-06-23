//SPDX-license-Identifier: MIT

pragma solidity ^0.8.18;

/*
    There are 3 types of variables in the Solidity:
    1- State Variables: They are stored on the blockchain. They are written outside of the functions.
    2- Local Variables: They are not stored on the blockchain. They are written inside of the functions.
    3- Global Variables: They are special variables that are available for all functions. They are written inside of the functions.
*/

contract Variables{
    // State Variable:
    string private text = "Hello World";

    function add10(uint number) public pure returns(uint){
        // Local Variable:
        uint number10 = 10;

        return number + number10;
    }

    function getAddress() public view returns(address){
        // Global Variable:
        return msg.sender;
    }
}

/*
    for more information about global variables, visit the following link:
    https://docs.soliditylang.org/en/v0.8.6/units-and-global-variables.html
*/