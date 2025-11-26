// 题目#4
// 字节数组
  
// 定义一个public bytes变量b1，赋值为hello
// 定义一个public bytes变量b2，赋值为world
// 补充完整combine函数，返回合并b1和b2后的字节数组



pragma solidity ^0.8.12;


contract BytesDataType {
   
   bytes public b1 = "hello";
    bytes public b2 = "world";

    function combine() public view returns (bytes memory) {
        bytes memory result = new bytes(b1.length + b2.length);
        
        // 复制b1的内容到结果数组
        for (uint i = 0; i < b1.length; i++) {
            result[i] = b1[i];
        }
        
        // 复制b2的内容到结果数组（接在b1后面）
        for (uint j = 0; j < b2.length; j++) {
            result[b1.length + j] = b2[j];
        }
        
        return result;
    }
}