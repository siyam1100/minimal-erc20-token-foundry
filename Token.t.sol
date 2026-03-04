// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "./Token.sol";

contract TokenTest is Test {
    MinimalToken public token;
    address owner = address(1);
    address user = address(2);

    function setUp() public {
        vm.prank(owner);
        token = new MinimalToken("TestToken", "TT", 1000);
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000 * 10 ** 18);
        assertEq(token.balanceOf(owner), 1000 * 10 ** 18);
    }

    function testMinting() public {
        vm.prank(owner);
        token.mint(user, 500 * 10 ** 18);
        assertEq(token.balanceOf(user), 500 * 10 ** 18);
    }

    function testFailNonOwnerMint() public {
        vm.prank(user);
        token.mint(user, 100);
    }
}
