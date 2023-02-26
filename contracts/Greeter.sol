// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import 'hardhat/console.sol';

contract Greeter {

    string private greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a greeter with greeting", _greeting);
        greeting = _greeting;
    }

//The greet method returns the greeting string. Since this is a view function, it costs no gas, and requires no signing to execute.

    function greet() public view returns(string memory) {
        return greeting;
    } 


//The setGreeting method sets the greeting string with a provided user value. Since this updates the smart contract state, it costs gas, and requires signing
// setGreeting method uses the Hardhat's console.log contract, so we can actually debug and see to what values was greeting changed to!
    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting , _greeting);
        greeting = _greeting;
    }

    receive() external payable {}
    fallback() external payable {}
}
