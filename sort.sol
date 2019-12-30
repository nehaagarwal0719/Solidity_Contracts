pragma solidity ^0.5.0;

contract Sort {
    
    uint[] arr;
    
    function initialize (uint[] memory _a) public payable{
         arr= _a;
    }
    //arranging in ascending order
    function sort() public returns(uint[] memory){
        for(uint i=0;i<arr.length-1;i++)
        {
            for(uint j=0;j<arr.length-1-i;j++)
            {
             if (arr[j]>arr[j+1])
                {
                  uint temp=arr[j];
                  arr[j]=arr[j+1];
                  arr[j+1]=temp;
                }
            }   
        }
        return arr;
    }
    
function get() external view returns (uint[] memory) {
        return arr;
    }
}
