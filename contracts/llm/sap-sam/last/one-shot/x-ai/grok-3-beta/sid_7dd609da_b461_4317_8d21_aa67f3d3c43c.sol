// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:02:07.380Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_7dd609da_b461_4317_8d21_aa67f3d3c43c {
    uint public tokenState = 1; // Start with the StartEvent active
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
                // <--- StartEvent sid-2C005AA9-1F1F-4B1D-8589-8603118DDA25 --->
                // Automatically transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-D8DF7A5B-B137-4687-A879-69C850052582
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask sid-D8DF7A5B-B137-4687-A879-69C850052582 Prijavljivanje problema --->
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Transition to sid-57A72721-2BE2-4D5C-B58E-5A4A1348616A
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask sid-57A72721-2BE2-4D5C-B58E-5A4A1348616A Dobijanje detaljnog opisa problema --->
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Transition to sid-521CBDD1-6F23-41C1-BBFA-E19A3E418B0F (Gateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- Exclusive Gateway sid-521CBDD1-6F23-41C1-BBFA-E19A3E418B0F --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Transition to sid-F090F35F-F607-4150-ADBD-5618474E68B2
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Default transition to sid-2CD0A34F-CFFD-4787-B104-9221A4FBB61B
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask sid-2CD0A34F-CFFD-4787-B104-9221A4FBB61B --->
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Transition to EndEvent sid-13A5351F-59F7-4873-AC96-DC099754D9E0
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask sid-F090F35F-F607-4150-ADBD-5618474E68B2 Konsultovanje tehnicke podrske --->
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Transition to sid-4E287ACC-E235-4363-97B3-7E34EA6B639B
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask sid-4E287ACC-E235-4363-97B3-7E34EA6B639B Dostavljanje resenja --->
                if (5 == id && msg.sender == participants[8]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(128);
                    _tokenState |= 16; // Transition back to sid-2CD0A34F-CFFD-4787-B104-9221A4FBB61B
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- EndEvent sid-13A5351F-59F7-4873-AC96-DC099754D9E0 --->
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}