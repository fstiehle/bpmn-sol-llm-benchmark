// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:59:06.161Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_6f4dce54_8f2e_4ec9_97ee_87509fdc7576 {
    uint public tokenState = 1; // Start with the first bit active for the start event
    address[8] public participants;
    
    constructor(address[8] memory _participants) {
        participants = _participants;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Auto transition from Start Event to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate first task bit
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Choreography Task: order trip (sid-BE0DD976-22AE-4BE7-8028-8BECA9607D1B)
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to next task bit
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Choreography Task: search flights (sid-AFF2D2C4-C3B7-4301-9215-D181ED9D0E69)
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to next task bit
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Choreography Task: flights result (sid-2A684B07-006B-48C5-8F55-B6F0A3D96C0E)
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to next task bit
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Choreography Task: trip result (sid-D32DEB2A-79BC-4C3B-BAF0-1962CC4DED9A)
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to end event bit
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Auto transition to End Event
                _tokenState &= ~uint(32);
                _tokenState = 0; // Terminate the process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}