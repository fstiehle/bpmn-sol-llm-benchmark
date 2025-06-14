// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:07:30.838Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_95718e84_e21c_4852_8383_b8aa8c8c4073 {
    uint public tokenState = 1; // Start with the StartEvent active
    address[2] public participants;

    constructor(address[2] memory _participants) {
        participants = _participants;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent (sid-3B4EF9E2-63DB-4CF0-A26A-CB6EB94EC527)
                // Auto transition to the first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate View Application Status task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask: View Application Status (sid-944D7F52-9327-43FF-A082-7C5F472722FA)
                if (taskID == 1 && msg.sender == participants[0]) {
                    // Task execution allowed only by Applicant (participant index 0)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Transition to EndEvent
                    taskID = 0; // Reset taskID to prevent loops
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // EndEvent (sid-BDF6FE35-24C6-4659-9122-4236996A5CF3)
                _tokenState &= ~uint(4);
                _tokenState = 0; // Process termination
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}