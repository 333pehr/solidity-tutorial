//SPDX-licence-identifier: MIT

pragma solidity ^0.8.18;

contract Errors{

}

/*

    There are three ways to handle an error in solidity:

        1. Require
        2. Revert
        3. Assert
        

    Require:
        - Used to validate inputs and conditions before execution
        - If the condition is not met, the transaction will be reverted and all changes will be undone
        - Second parameter is an error message that will be displayed if the condition is not met
        for example:
            function buy(uint amount) public payable{
                require(amount <= msg.value / price, "Not enough Ether provided.");
                //...
            }

    Revert:
        - revert function is similar to require, but it is used to provide an error message and undo all changes
        - revert is useful when you want to provide more detailed an error message
        - for example:
            function buy(uint amount) public payable{
                if(amount > msg.value / price){
                    revert("Not enough Ether provided.");
                }
                //...
            }

    Assert:
        - Assert should only be used to test for internal errors, and to check invariants
        - Assert should not be used to control the flow of control in your code
        - Mostly used to check for conditions that should never, ever be false
        - for example:
            function buy(uint amount) public payable{
                assert(amount <= msg.value / price);
                //...
            }
*/