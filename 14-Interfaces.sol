//SPDX_license_identifier: MIT

pragma solidity ^0.8.18;

interface Human {
    function getName() external view returns (string memory);
    function getAge() external view returns (uint256);
}

contract Person is Human {
    string name;
    uint256 age;
    
    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }
    
    function getName() external view override returns (string memory) {
        return name;
    }
    
    function getAge() external view override returns (uint256) {
        return age;
    }
}

/*
    Interfaces:
        Interfaces are similar to abstract contracts, but they cannot have any functions implemented.
        Interfaces are basically like a class with only abstract functions. this means that the functions do not have any implementation.
        Interfaces are used to establish a contract between different contracts. like a feature that all contracts must have.

    Different from abstract contracts, interfaces cannot have any state variables. they can only have function declarations.
    Abstract contracts can contain variables and modifiers, but interfaces cannot.
*/