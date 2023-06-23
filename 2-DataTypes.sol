// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract DataTypesContract{
    // boolean : note that the default value of the boolean is false.
    bool private myBool = false;

    // integer
    int private myInt = -128;

    // unsigned integer: note that the default value of the unsigned integer is 0.
    uint private myUint = 128;

    // string: note that the default value of the string is empty string.
    string private myString = "Hello World";

    // address:
    address private myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // payable address
    address payable private myPayableAddress = payable(myAddress);

    //msg.sender: It represents the account or contract that initiated the current execution context.
    address private myAddress2 = msg.sender;
}

/*
    difference between address and address payable:
    address: It is a 20 byte value that does not allow any arithmetic operations.
    address payable: It is a 20 byte value that allows arithmetic operations.
    It is also capable of sending and receiving Ether via transfer and send functions.
*/