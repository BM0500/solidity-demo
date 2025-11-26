// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/MyToken.sol";

contract MyTokenTest is Test {
    MyToken token;
    address owner = address(0x1);
    address user = address(0x2);

    function setUp() public {
        vm.prank(owner);
        token = new MyToken("My Token", "MTK");
    }

    function testInitialSupply() public {
        assertEq(token.balanceOf(owner), 0); // 初始无铸币
    }

    function testMint() public {
        vm.prank(owner);
        token.mint(user, 1000e18);
        assertEq(token.balanceOf(user), 1000e18);
        assertEq(token.totalSupply(), 1000e18);
    }

    function testTransfer() public {
        vm.prank(owner);
        token.mint(owner, 100e18);
        token.transfer(user, 50e18);
        assertEq(token.balanceOf(owner), 50e18);
        assertEq(token.balanceOf(user), 50e18);
    }

    function testBurn() public {
        vm.prank(owner);
        token.mint(owner, 100e18);
        vm.prank(owner);
        token.burn(30e18);
        assertEq(token.balanceOf(owner), 70e18);
        assertEq(token.totalSupply(), 70e18);
    }

    function testOnlyOwnerCanMint() public {
        vm.expectRevert(); // 非所有者调用应失败
        token.mint(user, 1e18);
    }
}