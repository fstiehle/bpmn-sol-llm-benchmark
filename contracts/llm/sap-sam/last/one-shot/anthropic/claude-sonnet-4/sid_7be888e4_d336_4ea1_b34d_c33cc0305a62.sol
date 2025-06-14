// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:04:15.536Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_7be888e4_d336_4ea1_b34d_c33cc0305a62 {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;
    
    constructor(address[16] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-3E37DF0E-F7CB-458E-814D-3771BB34BE1C Make travel offer --->
                if (1 == id && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-1D096979-7C5F-402C-A905-2F7180C1F4E1 Reject Offer --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-8CF08A36-D3B9-4BF9-B3A3-F97D7619EAAA Book travel --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-0ADD7839-3AFD-4454-86A1-0C6585433A74 Confirm booking --->
                if (4 == id && msg.sender == participants[7]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-CEC16AD1-8776-4EE7-8EED-BA50BE39F792 Pay travel --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-BA77ABD3-D153-40B1-89FC-6ED58B05ADDA Confirm payment --->
                if (6 == id && msg.sender == participants[11]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-8DF13EBF-DD0D-4B5A-A60C-17AEFCC29464 Refuse payment --->
                if (7 == id && msg.sender == participants[13]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-29C4DA6B-FE7C-4F58-9E5C-4DE887F9F1FD Order ticket --->
                if (8 == id && msg.sender == participants[14]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- Event based gateway --->
                _tokenState &= ~uint(2);
                _tokenState |= 12;
                continue;
            }
            if (_tokenState & 512 == 512) {
                // <--- Exclusive gateway --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 256;
                    continue;
                } else {
                    _tokenState &= ~uint(512);
                    _tokenState |= 128;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
