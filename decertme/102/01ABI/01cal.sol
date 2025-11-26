// ABI：应用系统二进制接口（application binary interfaces）
// 可以把 ABI 理解为 Solidity 智能合约和外部调用者之间的桥梁。它允许智能合约可以被调用和执行，同时确保了函数调用的数据能够正确地被解析。


// 题目#1
// 计算以下函数签名的 ABI 编码后的字节大小：



function transfer(address recipient, uint256 amount)


在Solidity中，函数签名 function transfer(address recipient, uint256 amount) 的ABI编码后的字节大小计算如下：

1. 函数选择器(Method ID)：这是函数签名的Keccak-256哈希的前4个字节，大小为4字节
2. 第一个参数(address类型)：编码为32字节
3. 第二个参数(uint256类型)：编码为32字节
因此，完整的ABI编码字节大小为：
4字节(函数选择器) + 32字节(address参数) + 32字节(uint256参数) = 68字节