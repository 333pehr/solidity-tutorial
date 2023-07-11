//SPDX-license-identifier: MIT

pragma solidity ^0.8.18;

contract Events{
    event NewUser(string name, string age, address userAddress);

    struct User{
        string name;
        string age;
        address userAddress;
    }

    User[] public users;
}