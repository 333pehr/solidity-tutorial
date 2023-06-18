// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyContract{
    string private text = "Hello World";

    function textGetter() public view returns(string memory){
        return text;
    }
}


/*
    Explanation:
    // SPDX-License-Identifier: MIT
    This is a comment that is used to specify the license type of the contract. Should be written at the top of the contract.


    pragma solidity ^0.8.18;
    pragma is one of the solidity's keyword that is used to specify the compiler version. Should be written at the top of the contract.

    contract keyword is used to define a contract. It is followed by the name of the contract. In this case, the name of the contract is MyContract.
    it is similar to class in other programming languages. similarly, they have constructors, functions, variables, etc.

    syntax of the Solidity is so similar to the syntax of the C#.
*/