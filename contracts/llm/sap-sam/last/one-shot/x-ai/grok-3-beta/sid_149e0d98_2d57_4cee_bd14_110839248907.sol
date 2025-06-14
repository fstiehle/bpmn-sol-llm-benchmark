// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:36:23.368Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_149e0d98_2d57_4cee_bd14_110839248907 {
    uint public tokenState = 1; // Starting with the start event active
    address[4] public participants;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event transitions to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate first choreography task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-CE6FC14A-131E-46BC-BC22-EB91FC9B3DDC Nach Geld fragen --->
                if (1 == taskID && msg.sender == participants[0]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate next choreography task
                    taskID = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-F2D422F5-0187-4B47-AF88-7E50BA466EE1 Geld geben --->
                if (2 == taskID && msg.sender == participants[2]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate end event
                    taskID = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // End event reached, terminate process
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}