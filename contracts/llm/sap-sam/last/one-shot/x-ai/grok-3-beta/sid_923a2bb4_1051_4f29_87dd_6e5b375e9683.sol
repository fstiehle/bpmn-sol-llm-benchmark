// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:06:47.161Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_923a2bb4_1051_4f29_87dd_6e5b375e9683 {
    uint public tokenState = 1; // Start with the StartEvent active
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent to Task 1 (sid-CC04E9FF-9B18-42B9-8659-9795E407D833)
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Task 1: Neues Ticket wird angelegt
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 2: Verschickt Nummer des Tickets als Bestaetigung
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task 3: Beginnt mit Anfragebearbeitung
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Exclusive Gateway (sid-396FA554-6BD9-4DE1-A934-3A7D583EAF53)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Directly to Task 5 (sid-E6E6D035-AA1B-48DA-A8A4-C8E2AF2029D5)
                    continue;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Default to Task 4 (sid-5F138745-7938-4217-836B-B96910ECB793)
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Task 4: Fordert Informationen beim Kunden an
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Task 6: Sendet erforderliche Informationen
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 32; // To Task 5 (sid-E6E6D035-AA1B-48DA-A8A4-C8E2AF2029D5)
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Task 5: Sendet Loesung an Kunde
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // To EndEvent
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // EndEvent
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}