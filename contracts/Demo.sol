pragma solidity >=0.4.25 <0.7.0;


contract Demo {
	mapping (address => uint) balances;
	uint [] array;

	function subtract(uint x, uint y) public returns (uint){
		
		require(x>=y, "x has to be greater than y");
		
		uint result = x - y;
		return result;
		
	}
	
	function insertNumbers(uint value, uint numbers) public{
		
		// gas used = 23239
		// gas left = 6698736
		//uint threshold = ( gasleft() - 42359) /  26000 ; 
		//require (numbers < threshold, "it runs out of gas if numbers is large");
		for(uint i = 0; i < numbers; i++){
			
			// gas usuage for iteration 1 : 6698736 - 6656377 = 42359
			// gas usuage for iteration 2 : 6656377 - 6646056 = 10321
			// gas usuage for iteration 3 : 6646056 - 6620625 = 25431
			// gas usuage for iteration 4 : 6620625 - 6595260 = 25365
			array.push(value);
		}
		
	}
	
	function gLeft(uint value, uint numbers) public returns (uint){
		insertNumbers(value, numbers);
		return gasleft();

	}
}
