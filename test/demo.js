const Demo = artifacts.require("Demo");

contract('Demo' , (accounts) => {
  it('It should return 10 - 5 ', async () => {
    const DemoInstance = await Demo.deployed();
    const balance = await DemoInstance.subtract.call(10, 5);
	console.log('the value is ', balance.valueOf()["words"][0])
    assert.equal(balance.valueOf(), 5, "Output is wrong");
  });
  
  
    it('It should return 5 - 10 ', async () => {
    const DemoInstance = await Demo.deployed();
    const balance = await DemoInstance.subtract.call(5, 10);
	console.log('the value is ', balance.valueOf()["words"][0])
    assert.equal(balance.valueOf(), -5, "Output is wrong");
  });
  
  it('Return Gas Left', async () => {
    const DemoInstance = await Demo.deployed();
	const gas = await DemoInstance.gLeft.call(5, 3);
	console.log('the value is ', gas.valueOf()["words"][0])
	
	const gas2 = await DemoInstance.gLeft.call(5, 40);
	console.log('the value is ', gas2.valueOf()["words"][0])
  });
});
