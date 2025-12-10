// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 在合约 ModifierDemo 中：
// receiveEther 函数使用 payable 修饰符，因为它接收以太币并修改 balance 状态变量。
// getBalance 函数使用 view 修饰符，因为它仅读取 balance 状态变量的值，不做修改。
// multiply 函数使用 pure 修饰符，因为它既不读取也不修改合约状态变量，仅根据传入参数进行计算。
// castVote 函数没有使用特定修饰符，因为它修改了 voteCount 状态变量，但不属于 view、pure、payable 适用的特定场景。
// transfer 方法已被弃用，因其在发送 ETH 失败时会静默失败，存在安全隐患。Solidity 推荐使用 call{value: <amount>}("") 替代。
contract ModifierDemo {
    // 用于存储余额的状态变量
    uint256 public balance;
    // 用于存储投票计数的状态变量
    mapping(uint256 => uint256) public voteCount;

    // payable 修饰符示例：接收以太币的函数
    function receiveEther() public payable {
        balance += msg.value;
    }

    // view 修饰符示例：查看余额的函数
    function getBalance() public view returns (uint256) {
        return balance;
    }

    // pure 修饰符示例：纯计算函数
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // 无特定修饰符示例：修改状态变量的函数
    function castVote(uint256 proposalId) public {
        voteCount[proposalId]++;
    }
}