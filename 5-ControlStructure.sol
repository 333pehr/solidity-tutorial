//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ControlStructureContract{

    function ifElse(uint256 number) public pure returns(string memory){
        if(number > 10){
            return "Number is greater than 10";
        }else if(number < 10){
            return "Number is less than 10";
        }
        return "Number is equal to 10";
    }

    function forLoopSum(uint number) public pure returns(uint){
        uint sum = 0;
        for(uint i = 0; i <= number; i++){
            sum += i;
        }
        return sum;
    }

    function whileLoop(uint number) public pure returns(uint){
        uint count = 0;
        while (number != 0){
            count++;
            number --;
        }
        return count;
    }

}

/*
    there is not something new in Solidity for control structures.
    we have the same control structures that we have in other programming languages. if-else, for loop, while loop, do-while loop, switch-case, etc.
    but there is one thing that we need to be careful about, and that is the gas cost, because we are paying for the gas.
    so there are some things that we need to be careful about, and we need to avoid them to reduce the gas cost:
        For loops:
            1) Avoid using loops as much as possible, because they are expensive.
            2) Avoid using storage variables inside loops.
            3) Avoid using functions with external calls inside loops.
            4) Try to minimize the number of iterations in loops as much as possible. you can do this by using the break keyword.

        While loop:
            1) Make sure that the condition of the while loop will be false at some point, otherwise the contract will be stuck in an infinite loop.

        If-else:
            1) Avoid making deep if-else statements, the more complex the if-else statement is, the more gas it will consume.
*/