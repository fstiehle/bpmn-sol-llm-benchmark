// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T10:43:57.715Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_4a131a1b_ca7a_42b6_8b0f_f730e94ddad8 {
    uint public tokenState = 1;
    address[6] public participants;
    uint public conditions;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Check Task 1 (aa)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // Handle Exclusive Gateway (bit 1)
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                }
                continue; // Process new state immediately
            }

            // Check Task 2 (aadas)
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    break; // End process
                }
            }

            // Check Task 3 (a)
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    break; // End process
                }
            }

            // No further transitions possible
            break;
        }
        tokenState = _tokenState;
    }
}
