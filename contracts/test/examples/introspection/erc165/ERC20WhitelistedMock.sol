pragma solidity ^0.6.0;
import "@openzeppelin/contracts/access/Ownable.sol";
import "./../../../../examples/introspection/erc165/ERC20Whitelisted.sol";


contract ERC20WhitelistedMock is ERC20Whitelisted, Ownable {

    constructor (address whitelistAddress)
        public
        ERC20Whitelisted(whitelistAddress)
        Ownable()
    {

    }

    function mint(address account, uint256 amount)
        public
        onlyOwner
    {
        return super._mint(account, amount);
    }
}
