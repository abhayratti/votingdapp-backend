//SPDX-License-Identifier: Unlicense

// pragma solidity ^0.8.4;

// import "hardhat/console.sol";

// contract VotePortal {
//     uint256 totalVotes;
//     event NewVote(address indexed from, uint256 timestamp, string message);

//     struct Vote {
//         address voter;
//         string message;
//         uint256 timestamp;
//     }

//     Vote[] votes;

//     mapping(address => uint256) public lastVotedAt;

//     constructor() payable {
//         console.log("smartest of contracts");
//     }

//     function vote(string memory _message) public {
//         require(
//             lastVotedAt[msg.sender] + 5 seconds < block.timestamp, 
//             "Wait 5 seconds"
//         );

//         lastVotedAt[msg.sender] = block.timestamp;

//         totalVotes += 1;
//         // console.log("%s has sent a vote: %s", msg.sender, _message);

//         votes.push(Vote(msg.sender, _message, block.timestamp));

//         emit NewVote(msg.sender, block.timestamp, _message);
//     }

//     function getAllVotes() public view returns (Vote[] memory) {
//         return votes;
//     }

//     function getTotalVotes() public view returns (uint256) {
//         console.log("%d votes have been sent", totalVotes);
//         return totalVotes;
//     }
// }