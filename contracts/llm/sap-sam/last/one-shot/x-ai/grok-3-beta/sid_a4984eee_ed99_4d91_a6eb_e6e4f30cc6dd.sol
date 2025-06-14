// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:12:16.448Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_a4984eee_ed99_4d91_a6eb_e6e4f30cc6dd {
    uint public tokenState = 1; // Start with the initial state active
    address[6] public participants;
    uint public conditions;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Task 1: sid-657E8C44-DCCB-449F-8033-52706A33F26A - Anfrage bearbeiten
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    taskID = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Task 2: sid-40E67A20-F07D-4E8C-AE12-1F4FB27B91EF - Angebot erstellen
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to next task
                    taskID = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 3: sid-BBCE9BD4-F5A9-4F01-8166-1DCD3EBE69D4 - Buchung durchfuehren
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState = 0; // End of process
                    break; // Terminate
                }
            }
            break; // Exit loop if no task matches or tokenState is unchanged
        }
        tokenState = _tokenState;
    }
}