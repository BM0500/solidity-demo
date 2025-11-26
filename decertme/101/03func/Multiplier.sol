// 题目#3
// 带参数的函数
  
// 编写一个名为multiplyByTwo的public函数，接收一个uint类型的参数并返回这个数字乘以2的结果。


pragma solidity ^0.8.0;

contract Multiplier {
    function multiplyByTwo(uint _num) public pure returns (uint) {
        return _num * 2;
    }
}