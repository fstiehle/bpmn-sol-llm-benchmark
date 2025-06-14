// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:08:09.283Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_1b6a99e6_b701_40a6_8f04_86d715a76648 {
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 Bewerbung und Eingangsbestaetigung senden
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-63049054-FF0D-448E-A42E-7B917601D74C Fehlende Unterlagen anfordern
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F Fehlende Unterlagen schicken
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF Zusage senden
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 Absage senden
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Exclusive Gateway sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157 Bewerbung vollstaendig ?
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 16;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Exclusive Gateway sid-A1DCC015-7407-4D15-80AB-4AC299655E72 converging
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 32 == 32) {
                // Exclusive Gateway sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D Bewerbung ausreichend ?
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Exclusive Gateway sid-684ECB46-310F-4D15-9C70-6CE7F49A771F converging
                _tokenState &= ~uint(128);
                _tokenState |= 0;
                break; // is end
            }
            break;
        }
        tokenState = _tokenState;
    }
}
