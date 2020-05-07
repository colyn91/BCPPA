pragma solidity ^0.4.23;

contract MapPkToTx {
     
	address public ca;
    mapping(address => uint256) public PK2TX;
 
 
	event _update(address indexed requester);
	event _get(address indexed requester);
    event _deletetx(address indexed requester);
    function MapPkToTx() public {
	ca = msg.sender;
    }
	
	function update(address user, uint256 txid) public returns (address addr){
		require(msg.sender == ca);
        PK2TX[user] = txid;
		_update(msg.sender);
        return msg.sender;
    }	

    function get() public view returns (uint256 txid) {
		_get(msg.sender);
        return PK2TX[msg.sender];
    }
	
	function deletetx(address target) public{
		require(msg.sender == ca);		
        delete PK2TX[target]; 
		_deletetx(msg.sender);
    }
    
}

