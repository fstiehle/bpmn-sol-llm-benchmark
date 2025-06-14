// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:23:38.065Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_8d71145a_1d8c_4675_954c_783d2f183af1 {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;
    
    constructor(address[12] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask Bewerbung abschicken
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask fehlende Unterlagen anfordern
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask Zusage versenden
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Absage versenden
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Immatrikulationsunterlagen versenden
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask fehlende Unterlagen nachschicken
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Gateway after Bewerbung abschicken
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 1024;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // Converging gateway
                _tokenState &= ~uint(1024);
                _tokenState |= 2048;
                continue;
            }
            if (_tokenState & 2048 == 2048) {
                // Gateway for Zusage/Absage decision
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 256;
                    continue;
                } else {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 32;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Gateway after Zusage
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 512;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // Converging gateway after Zusage
                _tokenState &= ~uint(512);
                _tokenState |= 0;
                break;
            }
            if (_tokenState & 8 == 8) {
                // Gateway after fehlende Unterlagen anfordern
                if (conditions & 8 == 8) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 256;
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
