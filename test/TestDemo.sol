pragma solidity >=0.4.25 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Demo.sol";

contract TestDemo {

  function test1() public {
    Demo demo = Demo(DeployedAddresses.Demo());

    uint x = 10;
	uint y = 5;
	uint result = demo.subtract(x, y);

    Assert.equal(result, 5, "Number should be 5");
  }

  function test2() public {
    Demo demo = Demo(DeployedAddresses.Demo());

    uint x = 5;
	uint y = 10;
	uint result = demo.subtract(x, y);

    Assert.equal(result, 5, "Number should be 5");
  }
  
   function test3() public {
    Demo demo = Demo(DeployedAddresses.Demo());
	uint gas_left = gasleft();

    Assert.isBelow(gas_left, 0, "gas after set up");
  }
  
  
  function test4() public {
    Demo demo = Demo(DeployedAddresses.Demo());

	demo.insertNumbers(5, 1);
	uint gas_left = gasleft();

    Assert.isBelow(gas_left, 0, "gas after first Iteration");
  }
  
  function test5() public {
    Demo demo = Demo(DeployedAddresses.Demo());

	demo.insertNumbers(5, 2);
	uint gas_left = gasleft();

    Assert.isBelow(gas_left, 0, "gas after second Iteration");
  }
  
  function test6() public {
    Demo demo = Demo(DeployedAddresses.Demo());

	demo.insertNumbers(5, 3);
	uint gas_left = gasleft();

    Assert.isBelow(gas_left, 0, "gas after Third Iteration");
  }
  
  function test7() public {
    Demo demo = Demo(DeployedAddresses.Demo());

	demo.insertNumbers(5, 4);
	uint gas_left = gasleft();

    Assert.isBelow(gas_left, 0, "gas after Fourth Iteration");
  }
  
  function test8() public {
    Demo demo = Demo(DeployedAddresses.Demo());

	demo.insertNumbers(5, 260);
	uint gas_left = gasleft();

    Assert.isBelow(gas_left, 0, "gas left");
	}
}
