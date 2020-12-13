pragma solidity 0.5.1;

library Math {  // define library
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0);     // throw error like assertion
        uint256 c = a / b;
        return c;
    }
}