// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:09:23.972Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_22d9bf83_763f_4e16_be84_3b1c3341f5eb {
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
                // <--- ChoreographyTask slanje problema --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask dobijanje detaljnog opisa problema --->
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask slanje resenja --->
                if (3 == id && msg.sender == participants[5]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask trazenje resenja --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask slanje resenja --->
                if (5 == id && msg.sender == participants[9]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask trazenje resenja --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                } else {
                    // <--- auto transition --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                } else {
                    // <--- auto transition --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
