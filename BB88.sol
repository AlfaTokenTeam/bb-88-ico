pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BB88 is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BB88(address _owner)  UpgradeableToken(_owner) {
    name = "BB88";
    symbol = "BB88";
    totalSupply = 500000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}