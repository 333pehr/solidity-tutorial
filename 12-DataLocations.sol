//SPDX-license-Identifier: MIT

pragma solidity ^0.8.18;

contract DataLocations{
    
    //Storage Data Location
    string public owner = "Sepehr";
    address public ownerAddress = msg.sender;

    //Memory Data Location
    function changeOwner(string memory _newOwner) public {
        owner = _newOwner;
    }

    //Calldata Data Location
    function changeOwner2(string calldata _newOwner) public {
        owner = _newOwner;
    }


    // Example of consuming gas for each data location

    // 22375 gas
    // not modifiable
    function returnString(string calldata _string)public pure returns (string calldata) {
        return _string;
    }

    // 22687 gas
    // modifiable
    function returnString2(string calldata _string)public pure returns (string memory) {
        return _string;
    }

    // 22969 gas
    // modifiable
    function returnString3(string memory _string)public pure returns (string memory) {
        return _string;
    }
}

/*
    Type Of Data Locations:

    - Storage: This is the default location for state variables and it's where the variable is stored permanently.
    - Memory: This is used to hold temporary values. It is erased between external function calls. they are valotile.
    - Calldata: This is a special data location that contains the function arguments, only available for external functions.

    Difference between calldata and memory: 
    - Calldata is a non-modifiable, non-persistent area where function arguments are stored, and behaves mostly like memory.
    - Calldata is a data location that is only valid for function call arguments. It is a read-only data location that provides a cheaper way to read function arguments.


    for more:
    https://coinsbench.com/solidity-9-memory-storage-and-calldata-9abc86f0b4e
*/