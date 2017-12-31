pragma solidity ^0.4.17;

contract Lottery {
    mapping (address=>uint) userBets;
    mapping (uint=>address) users;
    uint totalUsers = 0;
    uint totalBets = 0;
    address owner;

    function bet() public payable {
        if (msg.value > 0) {
            if (userBets[msg.sender] == 0) {
                users[totalUsers] = msg.sender;
                totalUsers += 1;
            }
            userBets[msg.sender] += msg.value;
            totalBets += msg.value;
        }
    }
}