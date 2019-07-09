pragma solidity 0.5.1;
contract calculate{

    uint256  sum;
    
    function cal(uint256 _num1, uint256 _num2 ) public returns (uint256) {
        sum=_num1+_num2;
         return sum;
    }    
}
