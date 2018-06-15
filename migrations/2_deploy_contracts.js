var CreateAccounts = artifacts.require("./CreateAccounts.sol");

module.exports = function(deployer) {
	// Arguments after contract name are passed to the constructor
  deployer.deploy(CreateAccounts);
};
