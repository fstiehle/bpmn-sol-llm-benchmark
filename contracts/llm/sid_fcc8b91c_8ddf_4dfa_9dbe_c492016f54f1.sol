// test Small Model - One Shot with Easier Implementation Example at 2025-06-01T02:24:23.866Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract LLM_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
    address[10] public participants; // [Bewerber, Uni, Uni, Bewerber, Bewerber, Uni, Uni, Bewerber, Uni, Bewerber]
    uint public conditions;
    uint public tokenState = 1; // 1 = ChoreographyTask_C12DEEB5-86BF-4254-BB68-C930FD0905D6, etc.
    bool public complete = false;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        if (tokenState == 1 && id == 0 && msg.sender == participants[0]) {
            // ChoreographyTask_C12DEEB5-86BF-4254-BB68-C930FD0905D6
            tokenState = 2; // next: check if application is complete
            return;
        }

        if (tokenState == 2 && id == 0 && msg.sender == participants[0]) {
            // ChoreographyTask_C12DEEB5-86BF-4254-BB68-C930FD0905D6
            if ((conditions & 1) == 1) {
                tokenState = 4; // go to check if application is sufficient
            } else {
                tokenState = 3; // go to request missing documents
            }
            return;
        }

        if (tokenState == 3 && id == 1 && msg.sender == participants[2]) {
            // ChoreographyTask_63049054-FF0D-448E-A42E-7B917601D74C
            tokenState = 5; // next: send missing documents
            return;
        }

        if (tokenState == 5 && id == 2 && msg.sender == participants[4]) {
            // ChoreographyTask_9153A3B6-9D23-44BA-A624-2B6C91C8355F
            tokenState = 6; // next: check if application is sufficient
            return;
        }

        if (tokenState == 6 && id == 0 && msg.sender == participants[0]) {
            // ChoreographyTask_C12DEEB5-86BF-4254-BB68-C930FD0905D6
            if ((conditions & 1) == 1) {
                tokenState = 8; // go to offer acceptance
            } else {
                tokenState = 7; // go to reject
            }
            return;
        }

        if (tokenState == 8 && id == 3 && msg.sender == participants[6]) {
            // ChoreographyTask_996BBBD2-CA44-45A3-BD54-6C7090363FBF
            tokenState = 9; // next: end
            return;
        }

        if (tokenState == 7 && id == 4 && msg.sender == participants[8]) {
            // ChoreographyTask_510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9
            tokenState = 9; // next: end
            return;
        }

        if (tokenState == 9) {
            complete = true;
            return;
        }

        revert("Invalid task or sender at current state");
    }
}