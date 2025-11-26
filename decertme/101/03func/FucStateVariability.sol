// 题目#4
// 函数状态可变性
  
// 编写一个public pure函数pureFunc，它接收两个uint参数a和b，并返回它们的和，确保此函数不会修改或读取合约的状态。
// 编写一个public view函数viewFunc，它接收两个uint参数a和b，并返回a、b以及当前区块号的和。


pragma solidity ^0.8.0;

contract FucStateVariability {
     // pure函数：仅操作参数，不读写合约状态
    function pureFunc(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // view函数：可读取区块链状态（此处读取块号），但不修改状态
    function viewFunc(uint a, uint b) public view returns (uint) {
        return a + b + block.number;
    }
}
