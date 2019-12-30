pragma solidity ^0.5.1;

contract FirstContract{
// 0- PLAYING, 1-TIED, 2-WON
enum GameState{PLAYING,TIED,WON}

struct Game{
    address  player1;
    address  player2;
    uint256  score1;
    uint256  score2;
    GameState state;
}

mapping(uint256=>Game) games;

modifier callerMustbeAPlayer(uint256 uid)
{
    require(games[uid].player1==msg.sender || games[uid].player2==msg.sender,"Caller must be player");
    _;
}

constructor(uint256 _uid,address _player2,uint256 _basescore) public{
 newGame(_uid,_player2,_basescore);
    
}

function newGame(uint256 uid, address _player2, uint256 _basescore) public  {
    require(games[uid].player1==address(0) || games[uid].player2==address(0),"Game must not exist");
     games[uid]=Game(msg.sender,_player2,_basescore,_basescore,GameState.PLAYING);
}

function tied(uint256 uid) public  callerMustbeAPlayer(uid){
 games[uid].state=GameState.TIED;
}

function won(uint256 uid) public callerMustbeAPlayer(uid){
 games[uid].state=GameState.WON;
}

function updateScore(uint256 uid,uint256 _s1, uint256 _s2) public callerMustbeAPlayer(uid)
{
    games[uid].score1=_s1;
    games[uid].score2=_s2;
}


function getGameInfo(uint256 uid) public view returns(address,address,uint256,uint256,GameState)
{
    return (games[uid].player1,games[uid].player2,games[uid].score1,games[uid].score2,games[uid].state);
}
}
