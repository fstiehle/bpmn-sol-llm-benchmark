// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:58:29.058Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_6e59bf13_7bb4_4527_9f5a_029f235f43bd {
    uint public tokenState = 1; // Start with initial state at StartEvent
    address[10] public participants; // Array to hold the addresses of participants
    uint public conditions; // Variable to store conditions for gateway decisions

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
                // Task 1: Prijavljivanje problema (sid-FEB1E7DE-541C-4759-ADDF-D0FCB36AB7C4)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Task 2: Dobijanje detaljnog opisa problema (sid-CF6CD4A9-274F-48D2-A788-6131CDA1B213)
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway: Da Jane Doe zna da resi problem? (sid-2BA44D39-0D1D-4E70-9A6A-4201BDFE0471)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Task 3 (direct resolution)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to Task 4 (default path, forward to technical support)
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task 3: Davanje instrukcija za resavanje problema (sid-472D6D96-F451-4FD9-BF4C-51039C9D1080)
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End of process
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 4: Prosledjivanje problema tehnickoj podrsci (sid-99843370-A4A0-430E-87F6-9629601054A6)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Task 5: Dostavljanje resenja problema (sid-6D089489-260C-4F14-A989-F2D3BF5BE36B)
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 8; // Move back to Task 3 for final resolution
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}