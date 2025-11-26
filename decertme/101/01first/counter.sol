
// 题目#1
// Counter 计数合约
  
// Counter 是一个用于计数合约，包含两个函数，请补充完整相关函数功能

// 补充完整get函数，返回变量counter的值
// 补充完整increse函数，每次调用函数时counter加1

pragma solidity ^0.8.0;

contract Counter {
    uint private counter;
    
    constructor() {}

    function get() public view returns (uint) {
        return counter;
    }
    
    function increse() public {
       counter +=1;
    }
    
}
