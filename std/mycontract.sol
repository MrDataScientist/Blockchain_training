pragma solidity ^0.4.0;

import "mortal.sol";

contract MyContract is mortal{

    uint myVariable;

    //the owner is the message sender // who is the person who is just deploying the contract
    function MyContract() payable{
        myVariable = 5;
    }

    //onlyowner : solidity will take onlyowner modifier
    function setMyVariable(uint MyNewVariable) onlyowner{
        if(msg.sender == owner){
          myVariable = MyNewVariable;
        }
    }

    function getMyVariable() constant returns(uint){
        return myVariable;
    }

    function getMyContractBalance() constant returns(uint){
        return this.balance;
    }

    //this is an anonymous function and  it also called fallback function
    function () payable{

    }
}
