// test x-ai/grok-3-beta - one-shot at 2025-06-14T00:27:13.096Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_926e6635_4ca0_494a_9be5_5ebe28fa8c6d {
    uint public tokenState = 1;
    address[4] public participants;
    uint public conditions;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- Start Event to Parallel Gateway --->
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- Parallel Gateway Diverging --->
                _tokenState &= ~uint(2);
                _tokenState |= 4 | 8; // Activate both outgoing paths concurrently
                continue;
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask sid-984B95C1-C450-4BCC-A703-06A3F1E372B8 --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 48 == 48) {
                // <--- End Event (both paths completed) --->
                _tokenState &= ~uint(48);
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}