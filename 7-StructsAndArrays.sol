//SPDX-license-identifier: MIT

pragma solidity ^0.8.18;

contract Structs{
    struct User{
        string name;
        string age;
        address userAddress;
    }

    User[] public users;

    function addNewUser(string memory name, string memory age, address userAddress) public {
        User memory newUser;
        newUser.name = name;
        newUser.age = age;
        newUser.userAddress= userAddress;
        users.push(newUser);
    }

    
}

/*
    Structs:
        Structs are used to create custom data types. like structs in C.
        for example, we can create a struct for a user that has a name, age, and address.
        we can then create a variable of that struct type and assign values to it.
        we can also create an array or map of that struct type and add multiple users to it.      
*/