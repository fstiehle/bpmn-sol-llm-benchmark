// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:12:05.464Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_2c591827_8b1a_44df_9b65_7e81f4726aca {
    uint public tokenState = 1;
    address[13] public participants;
    uint public conditions;

    constructor(address[13] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // First contact
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Inform Publisher
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Instructions for publication
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // drafts
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Request for publishing
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // cancel publishing
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 8 == 8) {
                // auto transition
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 64 == 64) {
                if (conditions & 1 == 1) {
                    // auto transition
                    _tokenState &= ~uint(64);
                    _tokenState |= 8;
                    continue;
                } else {
                    // auto transition
                    _tokenState &= ~uint(64);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // auto transition to event based gateway
                _tokenState &= ~uint(16);
                _tokenState |= 144; // 16 | 128
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
