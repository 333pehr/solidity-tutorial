//SPDX-license-identifier: MIT

pragma solidity ^0.8.18;

contract Mappings{
    mapping (address => string) public accountOwners;

    //Set a owner for the account
    function setOwner(string memory ownerName) public{
        accountOwners[msg.sender] = ownerName;
    }

    //Get the owner of the account
    function getOwner() public view returns(string memory){
        return accountOwners[msg.sender];
    }

    //Delete the owner of the account
    function deleteOwner() public{
        delete accountOwners[msg.sender];
    }

    //Check if the owner of the account is set or not
    function isOwnerSet() public view returns(bool){
        if(bytes(accountOwners[msg.sender]).length > 0){
            return true;
        }
        return false;
    }

    //nested mapping
    mapping (address => mapping(uint => uint)) public accountTransactions;

    //Set a transaction for the account
    function setTransaction(uint transactionId, uint amount) public{
        accountTransactions[msg.sender][transactionId] = amount;
    }

    //Get the transaction for the account
    function getTransaction(uint transactionId) public view returns(uint){
        return accountTransactions[msg.sender][transactionId];
    }

    //Delete the transaction for the account
    function deleteTransaction(uint transactionId) public{
        delete accountTransactions[msg.sender][transactionId];
    }
}

/*
    Mapping
        Mapping is a key-value pair data structure that is used to store data in the form of key-value pairs.
        It is similar to the dictionary in C#.
        just works like arrays, but instead of using indexes, we use keys to access the values.
        the keys can be of any data type, but the values must be of the same data type.
    
    Nested Mapping
        Nested mapping is a mapping that has another mapping as its value.
        like nested arrays, we can have nested mappings. we can have a mapping as the value of another mapping.
        in this case, we need to specify the key of the first mapping, and then the key of the second mapping.
        
*/