// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T11:48:54.360Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_582cea88_8725_425b_9254_28565e92cea7 {
    uint public tokenState = 1;
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Task: send Credit Card Application (taskID 1)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
                break;
            }

            // Gateway: Applicant suitable? (exclusiveGateway)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 64;
                } else {
                    _tokenState |= 4;
                }
                continue;
            }

            // Task: send Credit File request (taskID 3)
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
                break;
            }

            // Task: send Credit File (taskID 2)
            if (_tokenState & 8 == 8) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
                break;
            }

            // Gateway: Credit Card eligable? (exclusiveGateway)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                if (conditions & 2 == 2) {
                    _tokenState |= 32;
                } else {
                    _tokenState |= 64;
                }
                continue;
            }

            // Task: send Application Acceptance (taskID 5)
            if (_tokenState & 32 == 32) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState = 0;
                    break;
                }
                break;
            }

            // Gateway: converging exclusiveGateway
            if (_tokenState & 64 == 64) {
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                continue;
            }

            // Task: send Application rejection (taskID 4)
            if (_tokenState & 128 == 128) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    _tokenState = 0;
                    break;
                }
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}
