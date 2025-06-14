// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:40:02.221Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_66a09203_676f_496c_8fec_69bcd288b82f {
    uint public tokenState = 1;
    address[15] public participants;
    uint public conditions;

    constructor(address[15] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask teilt Wuensche/Rahmenbedingung mit
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask praesentiert moegliches Objekt
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask entscheidet sich fuer Objekt
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 48;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Finanzierung klaeren
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask bereitet Vertrag vor
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Vertrag unterzeichnen
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 192 == 192) {
                _tokenState &= ~uint(192);
                _tokenState |= 256;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
