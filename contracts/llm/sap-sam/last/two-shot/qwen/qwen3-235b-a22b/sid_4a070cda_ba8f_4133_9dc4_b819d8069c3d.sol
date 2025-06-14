// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T10:41:24.285Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_4a070cda_ba8f_4133_9dc4_b819d8069c3d {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Task 1: place book order
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState ^= 1;
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // Task 2: place & confirm back order
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState ^= 2;
                    _tokenState |= 4 | 8;
                    id = 0;
                    continue;
                }
            }

            // Task 3: send invoice
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState ^= 4;
                    id = 0;
                    continue;
                }
            }

            // Task 4: send shipment information
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState ^= 8;
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            // Task 5: issue shipment
            if (_tokenState & 16 == 16) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState ^= 16;
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            // Task 6: deliver shipment
            if (_tokenState & 32 == 32) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState ^= 32;
                    id = 0;
                    continue;
                }
            }

            // Converging gateway transition to Task7
            if ((_tokenState & (4 | 32)) == 0) {
                if ((_tokenState & 64) == 0) {
                    _tokenState |= 64;
                    continue;
                }
            }

            // Task 7: send payment
            if (_tokenState & 64 == 64) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState ^= 64;
                    break; // End event
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
