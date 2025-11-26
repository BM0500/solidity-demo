// 题目#7
// 函数修饰器
  
// 函数修饰器是 Solidity 的重要组成部分，在以声明方式改变函数行为方面被广泛使用。
// 要求：

// 添加isOwner修饰器修饰withdraw()方法，确保只有合约的拥有者可以执行该函数。当非拥有者调用时，报Only owner错误


pragma solidity ^0.8.0;

contract ModifierExample {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // 定义isOwner修饰符
    modifier isOwner() {
        require(msg.sender == owner, "Only owner");
        _; // 表示执行被修饰函数的函数体
    }
    
    // 使用isOwner修饰符修饰withdraw函数
    function withdraw() public isOwner {
        // 函数体可以留空
    }
}