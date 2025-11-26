// 题目#7
// 映射(mapping)类型
  
// 定义一个public mapping类型变量balances，键类型为address，值类型为uint
// 补充完整setBalance函数，可以设置某地址的余额


pragma solidity ^0.8.0;

contract MappingDataType {
     mapping(address => uint) public balances;
    // balances

    constructor() {}

    function setBalance(address to, uint amount) public {
          balances[to] = amount;
        //
    }
}
