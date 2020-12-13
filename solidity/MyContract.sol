pragma solidity 0.5.1;

import "./Math.sol";    // import library

contract MyContract {
    using Math for uint256;     // using functions inside the library directly on uint256
    uint256 public value;
    
    function calculate(uint _value1, uint _value2) public {
        //value = Math.divide(_value1, _value2);
        value = _value1.divide(_value2);    // with "using Math for uint256;"
    }
}

