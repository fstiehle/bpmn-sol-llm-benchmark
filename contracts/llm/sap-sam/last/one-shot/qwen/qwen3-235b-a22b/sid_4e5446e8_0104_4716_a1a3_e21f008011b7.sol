// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:47:05.454Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_4e5446e8_0104_4716_a1a3_e21f008011b7 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask 1: Bewerbung abschicken
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 4 == 4) {
                // ChoreographyTask 2: Fehlende Unterlagen anfordern
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 32 == 32) {
                // ChoreographyTask 3: Absage zuschicken
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                // ChoreographyTask 4: Zusage zuschicken
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            // Process gateways
            if (_tokenState & 2 == 2) {
                // ExclusiveGateway Unterlagen vollstaendig?
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // ExclusiveGateway 
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                continue;
            }

            if (_tokenState & 16 == 16) {
                // ExclusiveGateway Zusage?
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    continue;
                }
            }

            if (_tokenState & 128 == 128) {
                // End transition
                _tokenState &= ~uint(128);
                continue;
            }

            break;
        }
        tokenState = _tokenState;
    }
}
