//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {


    string public tokenName = "ganesh";                                                                                                                                                             
    string public tokenSymbol = "ganesh nadar";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;

    function minting(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }


    function burning(uint256 _value) public {
        require(balances[msg.sender] >= _value, "Low Paypal Coins");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}
