//SPDX-license-identifier: MIT

pragma solidity ^0.8.18;

contract Events{
    event NewUser(uint id, string name, string age, address userAddress);
    event removeUser(string name, string age, address userAddress);

    struct User{
        uint id;
        string name;
        string age;
        address userAddress;
    }

    User[] public users;

    function addNewUserfunc(string memory name, string memory age, address userAddress) public{
        uint id = users.length;
        emit NewUser(id, name, age, userAddress);
        users.push(User(id, name, age, userAddress));
    }

    function removeUserfunc(uint index) public{
        require(index <= users.length, "Index out of bounds");
        emit removeUser(users[index].name, users[index].age, users[index].userAddress);
        delete users[index];
    }
}
/*

    Events:
        events are a way for your contract to communicate that something happened on the blockchain to your app front-end, which can be 'listening' for certain events and take action when they happen.
        Events are inheritable members of contracts. When you call them, they cause the arguments to be stored in the transaction's log - a special data structure in the blockchain. 
        These logs are associated with the address of the contract and will be incorporated into the blockchain and stay there as long as a block is accessible (forever as of Frontier and Homestead, but this might change with Serenity). 
        The Log and its event data is not accessible from within contracts (not even from the contract that created them).

*/