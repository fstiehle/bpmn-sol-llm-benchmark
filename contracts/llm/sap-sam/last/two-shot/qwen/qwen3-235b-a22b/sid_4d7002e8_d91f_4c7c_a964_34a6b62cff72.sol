// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T10:48:31.604Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_4d7002e8_d91f_4c7c_a964_34a6b62cff72 {
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
            if (_tokenState & 1 == 1) {
                // ChoreographyTask sid-EC41FCC8-D686-462C-9493-2F2CDFA9052F
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 2 == 2) {
                // ExclusiveGateway sid-7B36D673-5B79-45DE-A171-D780235447B1
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                }
                continue;
            }

            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    break;
                }
            }

            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
