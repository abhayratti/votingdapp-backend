// SPDX-License-Identifier: UNLICENSED 

// updated
pragma solidity ^0.8.4; 

import "hardhat/console.sol";

contract VotePortal {
    uint256 aVotes;
    uint256 bVotes; 

    constructor() {
        console.log("Contract is functioning");
    }

    function voteForA() public {
        aVotes += 1;
        console.log("%s has voted for option A", msg.sender);
    }

    function voteForB() public {
        bVotes += 1;
        console.log("%s has voted for option B", msg.sender);
    }

    function getTotalVotes() public view returns (uint256) {
        uint256 totalVotes = aVotes + bVotes;
        console.log("%d people have voted", totalVotes);
        return totalVotes;
    }
}