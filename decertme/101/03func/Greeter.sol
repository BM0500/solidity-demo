// 题目#1
// 函数返回值
  
// 编写一个简单的合约，该合约包含一个名为greet的public函数，该函数返回固定的字符串Hello, World!。

// 读取合约状态变量，而不做任何修改，就应该加上 view 修饰符
// 函数既不读取也不修改合约状态变量，仅依赖于输入参数进行计算时，就该用 pure 修饰符
// 函数涉及到接收以太币，那就必须使用 payable 修饰符


pragma solidity ^0.8.0;

contract Greeter {
    // greet
    function greet() public pure returns(string memory) {
            return "Hello, World!";
    }
}