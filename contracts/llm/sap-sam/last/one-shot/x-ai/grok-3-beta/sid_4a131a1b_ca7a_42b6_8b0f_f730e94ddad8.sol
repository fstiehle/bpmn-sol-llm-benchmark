// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:50:10.098Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_4a131a1b_ca7a_42b6_8b0f_f730e94ddad8 {
    uint public tokenState = 1; // Starting at StartEvent
    address[6] public participants;
    uint public conditions;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Task 1: sid-6F0CC474-0DE0-473D-806B-948E25F93FFA (aa)
            if (_tokenState & 1 == 1) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to Gateway
                    taskID = 0;
                    continue;
                }
            }

            // Gateway: sid-0DE77E9D-E94D-4EFD-8E3E-3BEA083F9E7B
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // Move to Task 3
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Default path to Task 2
                    continue;
                }
            }

            // Task 2: sid-B2024251-8DE3-41A1-9596-A5E6788A71AF (aadas)
            if (_tokenState & 4 == 4) {
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0; // Move to EndEvent (terminate)
                    break;
                }
            }

            // Task 3: sid-CB238E79-5376-4273-8A2F-3B9C56572F77 (a)
            if (_tokenState & 8 == 8) {
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // Move to EndEvent (terminate)
                    break;
                }
            }

            break; // Exit loop if no transitions are triggered
        }
        tokenState = _tokenState;
    }
}