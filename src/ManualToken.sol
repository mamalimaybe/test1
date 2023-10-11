//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ManualToken {
    mapping(address => uint256) private s_balance;

    function name() public pure returns (string memory) {
        return "Manal Token";
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether;
    }

    function decima() public pure returns (uint8) {
        return 18;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return s_balance[_owner];
    }

    function transfer(address _to, uint256 _amount) public {
        uint256 previousBalacne = balanceOf(msg.sender) + balanceOf(_to);
        s_balance[msg.sender] -= _amount;
        s_balance[_to] += _amount;
        require(balanceOf(msg.sender) + balanceOf(_to) == previousBalacne);
    }
}
