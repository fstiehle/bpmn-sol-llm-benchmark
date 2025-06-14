// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T22:38:06.591Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_358b40f6_533a_4871_9977_612ac09f0df0 {
    uint public tokenState = 1;
    address[13] public participants;
    uint public conditions;

    constructor(address[13] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Task 1: sid-3864AF81-D77E-4BDF-B04A-37A36CDA95AB
                if (id == 1 && msg.sender == participants[0]) {
                    // Task implementation
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Task 2: sid-2AE8694D-5220-4899-B2AF-129CDEF92152
                if (id == 2 && msg.sender == participants[2]) {
                    // Task implementation
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 3: sid-364C20F3-8EC5-4B6E-A1BE-B3D4754B613E
                if (id == 3 && msg.sender == participants[4]) {
                    // Task implementation
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task 4: sid-9843D9F4-7039-4AFB-BA38-B021D8E5DD43
                if (id == 4 && msg.sender == participants[6]) {
                    // Task implementation
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 5: sid-7C24CC5A-BF7B-4DCC-A22D-39AF6BC6D02B
                if (id == 5 && msg.sender == participants[8]) {
                    // Task implementation
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Task 6: sid-27232A43-7505-4987-8DCE-A6C9EF8849FF
                if (id == 6 && msg.sender == participants[11]) {
                    // Task implementation
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break; // End of process
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
