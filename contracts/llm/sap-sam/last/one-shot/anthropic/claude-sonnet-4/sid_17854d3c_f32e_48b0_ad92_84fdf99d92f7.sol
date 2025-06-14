// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:06:35.425Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_17854d3c_f32e_48b0_ad92_84fdf99d92f7 {
    uint public tokenState = 1;
    address[20] public participants;
    uint public conditions;
    
    constructor(address[20] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event - auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // Gateway converging - auto transition  
                _tokenState &= ~uint(2);
                _tokenState |= 4;
                continue;
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Wohnung
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask Gespräch
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Besichtigung
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 32 == 32) {
                // Exclusive gateway - evaluate conditions
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }
            
            if (_tokenState & 64 == 64) {
                // ChoreographyTask Wohnung abgelehnt
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Wohnung angenommen
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Kredit
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 512 == 512) {
                // Exclusive gateway for credit decision
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    continue;
                } else {
                    _tokenState &= ~uint(512);
                    _tokenState |= 4096;
                    continue;
                }
            }
            
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask Kredit geben
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask Unterschreiben des Vertrags
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8192 == 8192) {
                // ChoreographyTask Eintragung
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(8192);
                    _tokenState = 0;
                    break;
                }
            }
            
            if (_tokenState & 4096 == 4096) {
                // ChoreographyTask Kein Kredit
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(4096);
                    _tokenState = 0;
                    break;
                }
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
