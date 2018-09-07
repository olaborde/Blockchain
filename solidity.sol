

//This is a contract

pragma solidity ^0.4.24;


//import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/math/SafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";


contract ExampleToken is Ownable{
    
    using SafeMath for uint256;
    
    uint8 myNumber = 100;
    address owner_; // who should get  your tokens
    
    mapping ( address => uint256) public balances_;
    
    constructor() public {
        owner_ = msg.sender;
        balances_[owner_] = myNumber;
    }
    
    function transfer 
    (uint256 _amount, address _recipient) public {
        require(balances_[msg.sender] >= _amount);
        
        balances_[msg.sender] = balances_[msg.sender].sub(_amount);
        balances_[_recipient] = balances_[_recipient].add(_amount);
        
        //emit transfer(msg.sender, _recipient, _amount);
        
        
    }
    
    
}