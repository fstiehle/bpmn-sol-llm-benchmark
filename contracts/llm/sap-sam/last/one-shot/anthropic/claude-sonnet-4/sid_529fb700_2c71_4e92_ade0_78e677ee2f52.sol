// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:10:36.566Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_529fb700_2c71_4e92_ade0_78e677ee2f52 {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Klijent ima problem
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Dobijanje detaljnog opisa problema
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Trazenje pomoci
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Trazenje pomoci
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Resavanje problema
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Resavanje problema
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // Resavanje problema
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 1024;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 256;
                    continue;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }
            if (_tokenState & 192 == 192) {
                _tokenState &= ~uint(192);
                _tokenState |= 256;
                continue;
            }
            if (_tokenState & 1536 == 1536) {
                _tokenState &= ~uint(1536);
                _tokenState |= 1024;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
