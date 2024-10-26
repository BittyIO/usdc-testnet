// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.27;

import "forge-std/Test.sol";
import "ds-test/test.sol";
import "../src/FiatTokenV2.sol";

contract GetInitCodeHashTest is Test {
    function testGetUSDCInitCodeHash() public pure {
        bytes memory bytecode = type(FiatTokenV2).creationCode;
        console.logBytes32(keccak256(abi.encodePacked(bytecode)));
    }
}
