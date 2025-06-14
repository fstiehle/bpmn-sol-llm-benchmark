// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:35:33.934Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_4a131a1b_ca7a_42b6_8b0f_f730e94ddad8 {
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
            uint prevToken = _tokenState;
            // Check ChoreographyTask sid-6F0CC474-0DE0-473D-806B-948E25F93FFA (bit0)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // Check ExclusiveGateway sid-0DE77E9D-E94D-4EFD-8E3E-3BEA083F9E7B (bit1)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 8;
                } else {
                    _tokenState |= 4;
                }
                continue;
            }
            // Check ChoreographyTask sid-B2024251-8DE3-41A1-9596-A5E6788A71AF (bit2)
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    break;
                }
            }
            // Check ChoreographyTask sid-CB238E79-5376-4273-8A2F-3B9C56572F77 (bit3)
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    break;
                }
            }
            if (prevToken == _tokenState) {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
