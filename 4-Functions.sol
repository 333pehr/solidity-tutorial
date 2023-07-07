// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FunctionsContract{
    string private text = "This is a text";
    string private _name;
    string private _age;
    address private _owner;

    //constructor
    constructor(string memory name, string memory age){
        _owner = msg.sender;
        _name = name;
        _age = age;
    }

    //modifier

    /* 
    require function is used to validate the inputs.
    generally take two parameters: 
        the first parameter is the condition that we want to check.
        the second parameter is the error message that we want to return to the user if the condition was false.
    if the condition is true, the function will continue, otherwise it will throw an error, and the function will stop. the gas will be refunded.
    */
    modifier onlyOwner(){
        require(msg.sender == _owner, "You are not the owner");
        _;
    }

    // usage of modifier in function
    function changeName(string memory newName) public onlyOwner{
        _name = newName;
    }

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

    Constructor:
        Constructor in solidity works like the constructor in other programming languages.
        It is used to initialize the state of the contract.
        Constructor is optional. If we don't define a constructor, the contract will use the default constructor.
        the interesting thing about the constructor is that we can define the access modifier for it.
        This means we can define the constructor as private or internal or public.
        If we define the constructor as private, the contract can't be deployed by other contracts.
        If we define the constructor as internal, the contract can't be deployed by other contracts, but it can be deployed by the contracts that inherit from this contract.
        If we define the constructor as public, the contract can be deployed by other contracts. 

    Difference between memory and storage keywords:
        memory keyword is used for variables that are declared inside of the functions.
        storage keyword is used for variables that are declared outside of the functions.

    Modifiers:
        Modifiers are used to change the behavior of functions in a declarative way.
        Modifiers are defined with the keyword modifier.
        Modifiers can be used to:
            1- Restrict access
            2- Validate inputs
            3- Guard against reentrancy hack
            4- Guard against underflow and overflow
            5- etc.
        
*/