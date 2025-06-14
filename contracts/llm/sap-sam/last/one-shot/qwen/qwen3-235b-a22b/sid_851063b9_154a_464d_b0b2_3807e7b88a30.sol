// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:20:49.213Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_851063b9_154a_464d_b0b2_3807e7b88a30 {
    uint public tokenState = 1;
    address[4] public participants;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            uint prev = _tokenState;

            if (_tokenState & 1 == 1) {
                // Start event transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }

            if (_tokenState & 2 == 2) {
                // EventBasedGateway as parallel split
                _tokenState &= ~uint(2);
                _tokenState |= 12;
                continue;
            }

            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA (taskID 1)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2 (taskID 2)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState == prev) {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
