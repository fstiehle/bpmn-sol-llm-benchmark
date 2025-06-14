// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:28:23.311Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_5aefb762_fb87_4c5e_96a2_1e48284acd78 {
    uint public tokenState = 1;
    address[18] public participants;
    uint public conditions;

    constructor(address[18] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask zahtev za transportom
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask slanje odgovora korisniku
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask uplata novca
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask predaja paketa
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask obavestavanje korisnika
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask obavestavanje nadleznih organa
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask predaja paketa carini
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask vracanje paketa korisniku
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask slanje potvrde o isporuci paketa
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                if (conditions & 1 == 1) {
                    // auto transition
                    _tokenState &= ~uint(16);
                    _tokenState |= 256;
                    continue;
                } else {
                    // auto transition
                    _tokenState &= ~uint(16);
                    _tokenState |= 96;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                if (conditions & 2 == 2) {
                    // auto transition
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    continue;
                } else {
                    // auto transition
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    continue;
                }
            }
            if (_tokenState & 96 == 96) {
                // auto transition
                _tokenState &= ~uint(96);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // auto transition
                _tokenState &= ~uint(128);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
