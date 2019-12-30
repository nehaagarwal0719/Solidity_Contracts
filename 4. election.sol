pragma solidity 0.5.1;
contract Election{

    enum Campaign { Digital, Offline}
    Campaign choice;

    struct User{
        uint256 id;
        string name;
        string state;
        uint256  funds;
        bool active;
    }

    mapping(uint=>User) map;

    User Candidate; 

    function register( uint256  _id,string memory _name, string memory _state,uint256  _funds)public{
        Candidate=User(_id,_name,_state,_funds,false);

         if(Candidate.funds > 0)
            Candidate.active = true;

        else
            Candidate.active = false;
        map[_id]=Candidate;
    }

    function retriveFund(uint256 _id) view public returns(uint){
        User storage candidate1 = map[_id];
        return candidate1.funds; 
    }

    function spend(uint256 _id,uint _choice ) public returns(bool){
        User storage candidate1 = map[_id];
        if(checkActive(_id)){
        if (_choice==0)
           candidate1.funds-=20;
        else if(_choice ==1)
           candidate1.funds-=10;
         return true;
        }
        else
          return false;
    }
    function checkActive(uint256 _id)public returns(bool){
         User storage candidate1 = map[_id];
        if(candidate1.funds>0)
             return true;
         else
             return false;
         }
    }
