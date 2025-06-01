// test Small Model - One Shot with Easier Implementation Example at 2025-06-01T02:24:01.700Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract LLM_ChoreographyExample2 {
    address[3] public participants; // [Customer, Seller, Manufacturer]
    uint public conditions;
    uint public tokenState = 1; // 1 = ChoreographyTask_1vnykqp, etc.
    bool public confirmed = false;
    bool public produced = false;
    bool public informed = false;

    constructor(address[3] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // Enact a task by its ID:
    // 0 = ChoreographyTask_1vnykqp (Order goods)
    // 1 = ChoreographyTask_16lc74v (Produce goods)
    // 2 = ChoreographyTask_07t2zjo (Inform customer)
    // 3 = ChoreographyTask_056ylqg (Ship goods)
    // 4 = ChoreographyTask_0n57gae (Confirm order)
    function enact(uint id) external {
        if (tokenState == 1 && id == 0 && msg.sender == participants[0]) {
            // ChoreographyTask_1vnykqp (Order goods)
            if ((conditions & 1) == 1) {
                tokenState = 5; // skip to confirm
            } else {
                tokenState = 2; // go to produce
            }
            return;
        }

        if (tokenState == 2 && id == 1 && msg.sender == participants[1]) {
            // ChoreographyTask_16lc74v (Produce goods)
            produced = true;
            tokenState = 3; // next: inform
            return;
        }

        if (tokenState == 3 && id == 2 && msg.sender == participants[1]) {
            // ChoreographyTask_07t2zjo (Inform customer)
            informed = true;
            if (produced) {
                tokenState = 5; // ready to confirm
            } else {
                tokenState = 4; // wait
            }
            return;
        }

        if (tokenState == 4 && id == 4 && msg.sender == participants[0]) {
            // ChoreographyTask_0n57gae (Confirm order)
            confirmed = true;
            tokenState = 5; // ready to ship
            return;
        }

        if (tokenState == 5 && id == 3 && msg.sender == participants[1]) {
            // ChoreographyTask_056ylqg (Ship goods)
            tokenState = 6; // done
            return;
        }

        revert("Invalid task or sender at current state");
    }
}