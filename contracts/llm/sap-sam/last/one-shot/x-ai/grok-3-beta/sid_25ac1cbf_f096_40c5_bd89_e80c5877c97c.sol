// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:41:58.697Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_25ac1cbf_f096_40c5_bd89_e80c5877c97c {
    uint public tokenState = 1; // Start with the initial state active (startEvent)
    address[4] public participants;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent sid-D5D1255C-7AD9-49EE-8728-82818F9B71E2
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate ChoreographyTask M2
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-C7FA4975-D6F8-4D7E-89AE-48250D1B8233 (M2)
                if (taskID == 1 && msg.sender == participants[0]) {
                    // Task M2, initiating participant sid-DC946C81-1C5B-495E-8219-F7F667AC5D0D (index 0)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate next task M3
                    taskID = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-14244F4D-8990-4611-8CBF-6C8DEFFB4739 (M3)
                if (taskID == 2 && msg.sender == participants[2]) {
                    // Task M3, initiating participant sid-32AB4BCE-97FB-433A-937A-20908A1BBF01 (index 2)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate endEvent
                    taskID = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // EndEvent sid-23AFB5EB-1357-4DCA-AAD9-422F56548634
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}