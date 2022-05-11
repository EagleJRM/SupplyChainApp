// SPDX-License-Identifier: MIT
// ...............................................................................................
///Implements EIP20 token standard: https://github.com/ethereum/EIPs/blob/master/EIPs/eip-20.md
// ...............................................................................................
// Abstract contract for the full ERC 20 Token standard
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md

pragma solidity >=0.4.22 <0.9.0;

interface IERC20 {
    
    function totalSupply() external view returns (uint);
    function balanceOf(address _owner) external view returns (uint);
    function transfer(address _to, uint256 _value) external returns (bool);
    function allowance(address _owner, address _spender) external view returns (uint);
    function approve(address _spender, uint256 _value) external returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}