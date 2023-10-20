// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Storage {

    string public name;
    uint256 value;
    address payable owner;
    mapping(address => uint256) balances;

    function give_money(address recipient, uint256 amount) public {
        balances[recipient] = amount;
    }

    function check_balance(address account) public view returns(uint256) {
        return balances[account];
    }

    function get_name() public view returns(string memory) {
        return name;
    }
    
    constructor(string memory contract_name) {
        name = contract_name;
        owner = payable(msg.sender);
    }
}