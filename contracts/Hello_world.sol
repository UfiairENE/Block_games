//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "hardhat/console.sol";

contract HelloWorld {

    //declare state variable
    string public greeting;

    //define a constructor
    constructor () {
        greeting = "Hello World!";
    }

    function getMessage() external view returns (string memory) {
        return greeting;
    }

    function updateMessage(string memory _greet) public {
        console.log ("Address %s updating message", msg.sender);
        greeting = _greet;
    }

}