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

    Arrays:
        Arrays work the same way as in other languages.
        we can create an array of any type and add values to it.
        we can also create an array of structs and add multiple structs to it.
        there are two types of arrays in solidity: fixed and dynamic.
        fixed arrays have a fixed length and cannot be changed. to declare a fixed array, we need to specify the length of the array.
        dynamic arrays can be changed and have no fixed length. to declare a dynamic array, we do not need to specify the length of the array.
        arrays operations are limited in solidity. we can only get the length of the array and add values to it.
        to add values to an array, we can use the push() function.
        to get the length of an array, we can use the length property.
        we cannot remove values from an array or change the value of an element in an array.

*/