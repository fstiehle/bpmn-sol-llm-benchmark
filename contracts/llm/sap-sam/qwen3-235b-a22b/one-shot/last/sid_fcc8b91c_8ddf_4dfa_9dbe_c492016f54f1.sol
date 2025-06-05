// test large Model - One Shot at 2025-06-05T15:24:21.063Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
    uint public tokenState = 1;
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
                // <--- ChoreographyTask sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 Bewerbung und Eingangsbestätigung senden --->
                if (id == 0 && msg.sender == participants[0]) {
                    // Transition to exclusive gateway check
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    continue;
                }
            }

            if (_tokenState & 2 == 2) {
                // <--- ExclusiveGateway sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157 Bewerbung vollständig ? --->
                // Check condition for non-default flow first
                if ((conditions & 1) == 1) {
                    // Condition on "conditions & 1 == 1" is satisfied, proceed to task Fehlende Unterlagen anfordern
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                } else {
                    // Default flow: move directly to gateway convergence
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }

            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask sid-63049054-FF0D-448E-A42E-7B917601D74C Fehlende Unterlagen anfordern --->
                if (id == 1 && msg.sender == participants[2]) {
                    // Transition to next task
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }

            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F Fehlende Unterlagen schicken --->
                if (id == 2 && msg.sender == participants[4]) {
                    // Transition to gateway convergence
                    _tokenState &= ~uint(16);
                    _tokenState |= 8;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // <--- Gateway convergence sid-A1DCC015-7407-4D15-80AB-4AC299655E72 --->
                // Transition to next exclusive gateway
                _tokenState &= ~uint(8);
                _tokenState |= 32;
                continue;
            }

            if (_tokenState & 32 == 32) {
                // <--- ExclusiveGateway sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D Bewerbung ausreichend ? --->
                if ((conditions & 2) == 2) {
                    // Condition on "conditions & 2 == 2" is satisfied, go to Zusage senden
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                } else {
                    // Default flow: go to Absage senden
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF Zusage senden --->
                if (id == 3 && msg.sender == participants[6]) {
                    // Transition to end state
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    continue;
                }
            }

            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 Absage senden --->
                if (id == 4 && msg.sender == participants[8]) {
                    // Transition to end state
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                }
            }

            if (_tokenState & 256 == 256) {
                // <--- EndEvent sid-8EA82B3A-29EA-4FD9-9EEC-54B4805F4563 Bewerbung bearbeitetet --->
                _tokenState &= ~uint(256);
                break; // Process completed
            }

            break;
        }

        tokenState = _tokenState;
    }
}