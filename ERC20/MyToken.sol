// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// 导入 OpenZeppelin 安全组件（推荐方式）
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title MyToken - 一个可铸币的 ERC20 代币
/// @author Your Name
/// @notice 继承自 OpenZeppelin 的 ERC20 和 Ownable，仅合约所有者可铸币
contract MyToken is ERC20, Ownable {
    /// @dev 构造函数：初始化代币名称和符号
    /// @param name_ 代币名称（如 "My Token"）
    /// @param symbol_ 代币符号（如 "MTK"）
    constructor(string memory name_, string memory symbol_) 
        ERC20(name_, symbol_) 
        Ownable(msg.sender) // 显式指定所有者（兼容最新 OZ）
    {}

    /// @dev 铸币函数：仅所有者可调用，向指定地址增发代币
    /// @param to 接收地址
    /// @param amount 铸币数量
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); // 调用内部安全方法
    }

    /// @dev 销毁函数：用户可销毁自己持有的代币
    /// @param amount 销毁数量
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}