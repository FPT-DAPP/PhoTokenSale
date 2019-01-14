// Open remix.ethereum.org and paste the folowing code

pragma solidity ^0.4.24;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";

contract PhoToken is ERC20, ERC20Detailed {
    uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** 18);

    constructor () public ERC20Detailed("PhoToken", "PTK", 18) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}

contract PhoICO is Crowdsale(1000, 0x5083aAe4C0Ce5b96de55BA8d88F8848471C26083, IERC20(0x118f704e1b0273f49Ddcc015d58515b4dFcE888c)) {
}