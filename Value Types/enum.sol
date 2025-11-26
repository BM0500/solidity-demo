enum State {Pending, Approved, Rejected}


contract Task {
    State public status = State.Pending;

    function approvr() public  {
        status = State.Approved;
    }
}

struct Person {
    string name;
    uint256 age;
    address wallet;
}

contract Registry {
    // 状态变量：存储在链上（storage）
    Person[] public people; // 动态数组

    // 函数参数：必须指定 memory/calldata
    function addPerson(string memory _name, uint256 _age) public {
        people.push(Person(_name, _age, msg.sender));
    }

    // 返回结构体（需指定 memory）
    function getPerson(uint256 index) public view returns (Person memory) {
        return people[index];
    }
}

contract StorageDemo {
    uint256[] public data = [1, 2, 3];

    // ❌ 错误：未指定 memory
    // function badExample(uint256[] input) public {}

    // ✅ 正确
    function copyToMemory() public view returns (uint256[] memory) {
        uint256[] memory temp = new uint256[](data.length);
        for (uint i = 0; i < data.length; i++) {
            temp[i] = data[i];
        }
        return temp;
    }

    // calldata 示例（仅 external 函数可用）
    function sumCalldata(uint256[] calldata nums) external pure returns (uint256) {
        uint256 total = 0;
        for (uint i = 0; i < nums.length; i++) {
            total += nums[i];
        }
        return total;
    }
}