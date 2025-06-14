// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T15:44:53.142Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_a3c861e3_72c1_49c6_b1cc_e5a9a8c1e972 {
    uint public tokenState = 1;
    address[4] public participants;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Auto transition from Start Event to Event-Based Gateway
                _tokenState = 2;
                continue;
            }

            if (_tokenState & 2 == 2) {
                // Auto transition from Event-Based Gateway to both tasks
                _tokenState = 12; // Activate bits 4 and 8
                continue;
            }

            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-984B95C1-C450-4BCC-A703-06A3F1E372B8 (TaskID 1)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState = 16;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A (TaskID 2)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState = 16;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 16 == 16) {
                // End Event reached, terminate process
                _tokenState = 0;
                continue;
            }

            break;
        }
        tokenState = _tokenState;
    }
}
