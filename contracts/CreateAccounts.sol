pragma solidity ^0.4.20;

contract CreateAccounts {
    //Create with the name and initial balance

    string public tokenName = "Siemens Token";     //for displaying only
    string public tokenSymbol = "Sie";              //for displaying only


    struct Account {
        string name;
        address _addr;
        uint balance;
        uint _time;

    }

    mapping (address => Account) _accounts;

    function addAccount(address _address, string supplier_name) public returns(string, address) {
        Account _account = _accounts[_address];
        _account.name = supplier_name;
        _account.balance = 1000;
        _account._addr = _address;
        return (_account.name, _account._addr);
    }

    function getBalance() public returns(uint) {
        return _accounts[msg.sender].balance;
    }
}