// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:08:00.299Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_96f6f59a_a23c_4201_a58d_3da01bdc7a2c {
    uint public tokenState = 1; // Start with the start event active
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event: Kunde kommt ins Geschaeft
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate first choreography task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask: Gewuenschte Weinmenge mitteilen (sid-62A9B9D5-B633-40F0-8E04-3A6E523AFFAF)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask: Gewuenschte Weinmenge abfuellen (sid-F2111C67-1C3F-49BB-A1BF-1E78A41A9177)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask: Wein bezahlen (sid-7F56B815-49C3-47A2-84DE-F79CD248C77F)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask: Zahlung abschliessen (sid-ECAFED60-673E-4A4F-9A9A-A9EC6DA6A495)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask: Abgefuellten Wein uebergeben (sid-3C4EECB9-2417-439B-9702-6AEE1A724774)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to end event
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // End Event: Kunde verlaesst Geschaeft
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}