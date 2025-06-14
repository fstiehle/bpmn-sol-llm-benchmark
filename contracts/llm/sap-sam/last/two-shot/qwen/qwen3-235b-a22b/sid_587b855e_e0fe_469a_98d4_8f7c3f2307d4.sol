// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T11:55:51.784Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
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
            // Process diverging parallel gateway (bit 0)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2 + 4 + 8; // Activate all three tasks
                id = 0;
                continue;
            }

            // Task 1: sid-998BF84A-5A1B-4FC1-8D9D-35B23405CB1E (taskID 1)
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 16; // Activate converging gateway
                    id = 0;
                    continue;
                }
            }

            // Task 2: sid-840A8FCC-2211-467B-B180-1E77580E3EDF (taskID 2)
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate converging gateway
                    id = 0;
                    continue;
                }
            }

            // Task 3: sid-78E1385A-0AF4-4CDC-967C-072B15693036 (taskID 3)
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate converging gateway
                    id = 0;
                    continue;
                }
            }

            // Process converging gateway (bit 4)
            if (_tokenState & 16 == 16 && (_tokenState & 14) == 0) {
                _tokenState &= ~uint(16);
                break; // End process
            }

            break;
        }
        tokenState = _tokenState;
    }
}
