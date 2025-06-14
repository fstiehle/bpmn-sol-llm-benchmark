// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:16:08.981Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_2258986a_c790_4708_ae4e_8dc02b7d122d {
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
                // Start event automatically transitions to task1
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }

            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-5003F6B4... Schickt Antragsformular ab
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
                break;
            }

            if (_tokenState & 4 == 4) {
                // ExclusiveGateway sid-5B93C6E1...
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                }
                continue;
            }

            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-F85E2B91... Informieren über Ablehnung
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
                break;
            }

            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-CAB5DD5D... Informieren über Zustimmung
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
                break;
            }

            if (_tokenState & 32 == 32) {
                // EndEvent sid-AC9FDF8C...
                _tokenState = 0;
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}
