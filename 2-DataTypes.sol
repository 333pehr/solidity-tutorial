// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract DataTypesContract{
    // boolean : note that the default value of the boolean is false.
    bool private myBool = false;

    // integer
    int private myInt = -128;
    // int8 is a signed integer that has 8 bits. It can store values from -128 to 127.

    // unsigned integer: note that the default value of the unsigned integer is 0.
    uint private myUint = 128;

    // the default size of the integer and unsigned integer is 256 bits.

    // string: note that the default value of the string is empty string.
    string private myString = "Hello World";

    //bytes
    bytes private myBytes = "Hello World";

    // address:
    address private myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // payable address : here we are converting the address to the payable address by using the payable function.
    address payable private myPayableAddress = payable(myAddress);

    //msg.sender: It represents the account or contract that initiated the current execution context.
    address private myAddress2 = msg.sender;


    // we can convert byte to string by using the following function:
    string private myString2 = string(myBytes);
}

/*
    difference between address and address payable:
    address: It is a 20 byte value that does not allow any arithmetic operations.
    address payable: It is a 20 byte value that allows arithmetic operations.
    It is also capable of sending and receiving Ether via transfer and send functions.
*/

/*
    difference between bytes and string:
    bytes: It is used to store raw byte data. It is similar to byte[] in other programming languages.
    bytes is a fixed-length array. It means that once it is created, it cannot be resized.
    bytes is not iterable. It means that we cannot loop through it.
    bytes does not have too many built in functions.
    they are more low level, that's why they are typically used to manipulate or sotre binary data, such as cryptography hashes.
    string: It is used to store UTF-8 data. It is similar to string in other programming languages.
*/