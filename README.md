# Basic Solidity Contracts
 Small contracts written for learning purpose


1: Write a smart contract that will take in two integers and return the sum of those two integers.

2: Write a smart contract that will sort an array of real values and return the sorted array.
3 :Write a smart contract that will take in an address and a corresponding value that is assumed to be the amount of ethers stored at that address. Create a function, that would return the address with maximum ethers in it.

4: Smart contract to create a portal for candidates who are going to represent the states in an upcoming election.
Write a smart contract that will perform the following functions:
Create a function to register a candidate with the following parameters:
- CandidateID
- Candidate Name
- Candidate State
- Candidate Funds
- Status of candidate(active or not)
P.S: Status of the candidate can change depending on the funds that they have
   -  Create a function that can retrieve the funds of the candidate
For the smart contract defined above, add the following functions:
Create a function that will allow the candidate to spend funds on a campaign. Take in parameters - ID and funds and reduce the funds based on campaign type( you can define your own).
Create a function that will check if the candidate is active or not, based on funds. Change the status of candidate here, based on funds(funds > 0 is active)

5: Create two players who are playing a game against each other. Create functions that can perform the following functions:
Create an enum which described the state of the game(PLAYING, TIED, WON)
Register a new game only if the game doesn’t exist before
Game parameters: uid, player1, player2, score1, score2, GameState(ENUM)
Update the scores of new players, according to the scores taken in as parameters. In the same function, if the score of a player is 0, update the state of the game as won.
Game tied - updates the gamestate to be tied
Game won - updates the gamestate to be won
getInfo - get the info of a game

6: Create a smart contract that registers a Commodity and Sell the commodity when a Sell order is placed for that particular commodity!
Pro-Tip: Use modifiers and different functions to make sure that the quantity that needs to be sold is available.

7. Multisignature wallets
