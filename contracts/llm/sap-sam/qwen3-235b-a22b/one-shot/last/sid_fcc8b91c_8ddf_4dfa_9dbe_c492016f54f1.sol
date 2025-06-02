// test large Model - One Shot at 2025-06-02T19:33:32.989Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
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
            if (_tokenState & 1 == 1) {
                // ChoreographyTask: Bewerbung und Eingangsbestätigung senden
                if (id == 0 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    continue;
                }
            }

            if (_tokenState & 2 == 2) {
                // ExclusiveGateway: Bewerbung vollständig ?
                // Check condition for flow to 'Fehlende Unterlagen anfordern'
                if ((conditions & 1) == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }

            if (_tokenState & 4 == 4) {
                // ChoreographyTask: Fehlende Unterlagen anfordern
                if (id == 1 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // ChoreographyTask: Fehlende Unterlagen schicken
                if (id == 2 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
            }

            if (_tokenState & 16 == 16) {
                // ExclusiveGateway: converging before 'Bewerbung ausreichend ?'
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }

            if (_tokenState & 32 == 32) {
                // ExclusiveGateway: Bewerbung ausreichend ?
                // Check condition for flow to 'Zusage senden'
                if ((conditions & 1) == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                // ChoreographyTask: Zusage senden
                if (id == 3 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    continue;
                }
            }

            if (_tokenState & 128 == 128) {
                // ChoreographyTask: Absage senden
                if (id == 4 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                }
            }

            if (_tokenState & 256 == 256) {
                // ExclusiveGateway: converging before end
                _tokenState &= ~uint(256);
                _tokenState |= 0;
                break; // End state reached
            }

            break;
        }

        tokenState = _tokenState;
    }
}