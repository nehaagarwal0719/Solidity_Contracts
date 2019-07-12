pragma solidity 0.5.1;
contract Election{
    
    enum Status { Active, NotActive }
    
    struct User{
        uint256 id;
        string name;
        string state;
        uint256  funds;
        Status stat;
    }
    
    
    User Candidate; 
    
    function register( uint256  _id,string memory _name, string memory _state,uint256  _funds)public{
        Candidate=User(_id,_name,_state,_funds,Status.Active);
    }
    
    function retriveFund() view public returns(uint){
        return Candidate.funds;
    }
}
