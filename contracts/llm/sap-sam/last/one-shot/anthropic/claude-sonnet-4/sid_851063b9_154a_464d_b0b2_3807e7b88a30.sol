// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T20:43:44.481Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_851063b9_154a_464d_b0b2_3807e7b88a30 {
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Event based gateway - auto transition to both branches
                _tokenState &= ~uint(2);
                _tokenState |= 12; // 4 | 8
                continue;
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // End event - process terminates
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
