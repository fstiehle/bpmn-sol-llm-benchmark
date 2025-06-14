// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:01:45.345Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_7c94b3cf_1690_4cd3_849d_70ab08e4a3be {
    uint public tokenState = 1; // Start with the start event active
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event to Task 1 (sid-28797948-6051-4099-B0E3-0EB61D39DA83 - Auftrag erteilen)
                // Auto transition from Start Event
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Task 1 (sid-28797948-6051-4099-B0E3-0EB61D39DA83 - Auftrag erteilen)
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 2 (sid-62240596-E858-4B70-BF73-328E10A4C333 - Verfuegbarkeit abfragen)
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task 3 (sid-AE277DA3-0FB0-4731-AF32-8A88549CC18F - Grafik erstellen lassen)
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 4 (sid-C0390980-0D2E-4B7C-B6AC-0585518CDC4A - Freigabe einholen)
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // End Event
                _tokenState &= ~uint(32);
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}