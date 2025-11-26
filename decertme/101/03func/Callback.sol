// 题目#9
// receive 和 fallback 函数
  
// 在Solidity中，receive和fallback函数是两种特殊类型的函数，它们都没有名字、没有参数，也不能返回任何值。这两个函数的设计目的是为了让智能合约能够直接接收以太币（Ether）并进行处理。
// 要求：

// 编写receive函数，使totalReceived增加接收到的 Ether 值
// 编写fallback函数，使totalReceived增加接收到的 Ether 值

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Callback {
    address public owner;
    uint public totalReceived;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    // receive函数：处理仅转账的ETH接收
    receive() external payable {
        totalReceived += msg.value;
    }

    // fallback函数：处理带数据的ETH接收（或其他未匹配的调用）
    fallback() external payable {
        totalReceived += msg.value;
    }

    // 允许合约拥有者提款所有收到的以太
    function withdraw() public isOwner {
        payable(owner).transfer(address(this).balance);
    }
}