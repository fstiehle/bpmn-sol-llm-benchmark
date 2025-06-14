// test qwen/qwen3-235b-a22b - one-shot at 2025-06-14T00:38:20.789Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_926e6635_4ca0_494a_9be5_5ebe28fa8c6d {
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
                // Parallel gateway split
                _tokenState &= ~uint(1);
                _tokenState |= 2 | 4;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-984B95C1-C450-4BCC-A703-06A3F1E372B8 (taskID 1)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A (taskID 2)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // End event reached
                _tokenState &= ~uint(8);
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
