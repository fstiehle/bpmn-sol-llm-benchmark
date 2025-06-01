// test Small Model - One Shot with Easier Implementation Example at 2025-06-01T02:23:51.478Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract LLM_ChoreographyExample {
    address[3] public participants; // [Customer, Seller, Manufacturer]
    uint public conditions;
    uint public tokenState = 1; // 1 = ChoreographyTask_1vnykqp, etc.
    bool public produced = false;
    bool public informed = false;

    constructor(address[3] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // Enact a task by its ID:
    // 0 = ChoreographyTask_1vnykqp
    // 1 = ChoreographyTask_16lc74v
    // 2 = ChoreographyTask_07t2zjo
    // 3 = ChoreographyTask_056ylqg
    function enact(uint id) external {
        if (tokenState == 1 && id == 0 && msg.sender == participants[0]) {
            // ChoreographyTask_1vnykqp
            if ((conditions & 1) == 1) {
                tokenState = 5; // skip to ship
            } else {
                tokenState = 2; // go to produce
            }
            return;
        }

        if (tokenState == 2 && id == 1 && msg.sender == participants[1]) {
            // ChoreographyTask_16lc74v
            produced = true;
            tokenState = 3; // next: inform
            return;
        }

        if (tokenState == 3 && id == 2 && msg.sender == participants[1]) {
            // ChoreographyTask_07t2zjo
            informed = true;
            if (produced) {
                tokenState = 5; // ready to ship
            } else {
                tokenState = 4; // wait
            }
            return;
        }

        if ((tokenState == 5 || (tokenState == 4 && produced)) && id == 3 && msg.sender == participants[1]) {
            // ChoreographyTask_056ylqg
            tokenState = 6; // done
            return;
        }

        revert("Invalid task or sender at current state");
    }
}