//SPDX-license-identifier: MIT

pragma solidity ^0.8.18;


// Hirearchical Inheritance
contract Country {
    string name;
    uint256 population;
    string capitalCity;
}

contract Turkiye is Country{
    string cuisine;
}

contract England is Country{
    string king;
}


// Mult-Level Inheritance
contract GrandParent {
    string name;
    uint256 age;
}

contract Parent is GrandParent {
    string job;
}

contract Child is Parent {
    string hobby;
}


// Multiple Inheritance
contract A {
    string name;
    uint256 age;
}

contract B {
    string job;
}

contract C is A, B {
    string hobby;
}


// Constructors in Inheritance
contract Human {
    string name;
    uint256 age;
    
    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }
}

contract Student is Human {
    string major;
    
    constructor(string memory _name, uint256 _age, string memory _major) Human(_name, _age) {
        major = _major;
    }
}