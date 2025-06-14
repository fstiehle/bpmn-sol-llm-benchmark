// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:35:47.003Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_0de8854f_07eb_4d06_8e49_148a373df43a {
    uint public tokenState = 1; // Start with the start event active
    address[2] public participants;

    constructor(address[2] memory _participants) {
        participants = _participants;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event auto transition to task
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask: Entrega reportaje propio (sid-2A58777F-7651-4BB3-B240-7ECB47DD3D5B)
                if (taskID == 1 && msg.sender == participants[0]) {
                    // Task execution by Fotografo
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0; // Prevent infinite loop
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // End event auto transition
                _tokenState &= ~uint(4);
                _tokenState = 0; // Process termination
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}