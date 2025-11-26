// 题目#1
// 整形类型
  
// 定义一个public uint变量a，初始值设为10
// 定义一个public uint变量b，初始值设为1
// 定义一个public int变量c，初始值设为-1
// 补充完整arithmetic函数，返回a和b的加、减、乘、除的值

pragma solidity ^0.8.0;

contract IntegerDataType {
     uint public a = 10;
     uint public b = 1;
     int public c = -1;
    
    function arithmetic() public view returns (uint,uint,uint,uint) {
        uint add = a + b;  
        uint sub = a - b;   
        uint mul = a * b; 
        uint div = a / b;   
        return (add, sub, mul, div);
    }
}