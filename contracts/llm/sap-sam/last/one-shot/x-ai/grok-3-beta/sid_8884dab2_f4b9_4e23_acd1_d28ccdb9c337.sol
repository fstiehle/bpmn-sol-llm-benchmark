// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:04:29.009Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_8884dab2_f4b9_4e23_acd1_d28ccdb9c337 {
    uint public tokenState = 1; // Start with the initial state active (StartEvent)
    address[4] public participants; // Four participants as defined in the model

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent (sid-B42AAD16-4759-4193-BE02-D79F22426A79) auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Receive cancel request task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask Receive cancel request (sid-955E5290-E3D0-40E1-93E5-02CD7548D841)
                if (taskID == 1 && msg.sender == participants[0]) {
                    // Task executed by Applicant (sid-E8987506-7F3C-4516-87D5-E18CFB271CD6)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate next task
                    taskID = 0; // Prevent infinite loops
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Receive cancel request processed notification (sid-96719258-A235-4848-886C-7E1C342956DB)
                if (taskID == 2 && msg.sender == participants[2]) {
                    // Task executed by Admission officer (sid-F73EB934-7C12-45C2-95ED-6080E02CAF2E)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate EndEvent
                    taskID = 0; // Prevent infinite loops
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // EndEvent (sid-9A7DB3B7-5A2B-4CEB-AE37-25295BC64149)
                _tokenState = 0; // Terminate the process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}