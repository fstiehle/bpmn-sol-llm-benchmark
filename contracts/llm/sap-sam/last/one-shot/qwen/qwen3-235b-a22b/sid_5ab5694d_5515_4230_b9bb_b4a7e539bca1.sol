// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:27:27.070Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_5ab5694d_5515_4230_b9bb_b4a7e539bca1 {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask1 (Send Inquiry)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // GatewayA (exclusive converging)
                _tokenState &= ~uint(2);
                _tokenState |= 4;
                continue;
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask2 (Send Offer)
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // GatewayB (exclusive diverging)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                } else if (conditions & 2 == 2) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                }
                continue;
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask3 (Send Change Request)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask4 (Send Rejection)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState = 0;
                    break;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask5 (Place Order)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask6 (Find Designer)
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask7 (Handle Graphics Production)
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask8 (Get Approval)
                if (8 == id && msg.sender == participants[15]) {
                    _tokenState &= ~uint(512);
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
