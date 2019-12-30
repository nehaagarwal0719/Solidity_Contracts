pragma solidity 0.5.1;
contract calculate{
    
    uint256  num1;
    uint256  num2;

    constructor(uint _num1,uint _num2)public{
        num1=_num1;
        num2=_num2;
    }
    
    function cal( ) public view returns (uint) {
         uint sum= num1 + num2;
         return sum;
    }   
}
