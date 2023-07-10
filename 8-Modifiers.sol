//SPDX-licence-indentifier: MIT

pragma solidity ^0.8.18;

contract ModifierExamples{
    address public owner;
    uint public number;

    constructor(uint _number){
        owner = msg.sender;
        number = _number;
    }

    //syntax of modifier is somewhat similar to function. they can also take arguments.
    modifier onlyOwner(address _allowedAddress){
        require(msg.sender == owner || msg.sender == _allowedAddress, "You are not the owner or the allowed address");
        _; // merge wildcard
    }

    function changeNumber(uint _number) public onlyOwner(address(0x123)){
        number = _number;
    }
    // the above function will only be executed if the condition in the modifier is met. else it will throw an error. which is the second argument in the require function.
}

/*

    Modifiers:
        modifiers can be used if an automatic condition check is required before performin a certain function.
        The function won't be executed if the condition is not met.

    Merge WildCard:
        _; is used to merge the modifier with the function body.
        it is used to tell the compiler that the modifier is done and the function body can be executed.

*/