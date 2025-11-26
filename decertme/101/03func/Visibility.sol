// 题目#5
// 变量与函数的可见性
  
// 可见性关键字如public、private、internal、以及external控制着变量和函数能被哪些其它合约或外部调用者访问

// 定义一个 private uint类型变量privateVar，并赋值为 10
// 定义一个 internal uint类型变量 internalVar，并赋值为 20
// 定义一个 public uint类型变量 publicVar，并赋值为 30
// 定义一个 public函数getPrivateVar返回privateVar变量值
// 定义一个 public函数getInternalVar返回internalVar变量值
// 定义一个 external函数externalFunction返回publicVar变量值
// 定义一个 public函数getPublicVar，内部调用externalFunction方法

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Visibility {
  // 定义private uint变量privateVar，赋值10
     uint private privateVar = 10;
    
    // 定义internal uint变量internalVar，赋值20
     uint internal internalVar = 20;
    
    // 定义public uint变量publicVar，赋值30
     uint public publicVar = 30;
    
    // 定义public函数getPrivateVar，返回privateVar的值
    function getPrivateVar() public view returns (uint) {
        return privateVar;
    }
    
    // 定义public函数getInternalVar，返回internalVar的值
    function getInternalVar() public view returns (uint) {
        return internalVar;
    }
    
    // 定义public函数getPublicVar，内部调用externalFunction
    function getPublicVar() public view returns (uint) {
        return this.externalFunction();
    }
    
    // 定义external函数externalFunction，返回publicVar的值
    function externalFunction() external view returns (uint) {
        return publicVar;
    }
}
