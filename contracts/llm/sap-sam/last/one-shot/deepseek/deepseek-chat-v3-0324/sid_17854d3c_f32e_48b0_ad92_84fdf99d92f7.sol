// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:33:33.702Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_17854d3c_f32e_48b0_ad92_84fdf99d92f7 {
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
                // <--- ChoreographyTask_1 Kredit --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 6144;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_2 Wohnung --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask_3 Gespräch --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask_6 Besichtigung --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                if (conditions & 1 == 1) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- auto transition --->
                _tokenState &= ~uint(32);
                _tokenState |= 1024;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask_5 Wohnung angenommen --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 1;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- ChoreographyTask_4 Wohnung abgelehnt --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // <--- auto transition --->
                _tokenState &= ~uint(2048);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 4096 == 4096) {
                if (conditions & 2 == 2) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(4096);
                    _tokenState |= 128;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                // <--- auto transition --->
                _tokenState &= ~uint(4096);
                _tokenState |= 32768;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask_7 Kredit geben --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- ChoreographyTask_8 Unterschreiben des Vertrags --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- ChoreographyTask_9 Eintragung --->
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32768 == 32768) {
                // <--- ChoreographyTask_10 Kein Kredit --->
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(32768);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 6144 == 6144) {
                if (conditions & 2 == 2) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(6144);
                    _tokenState |= 4096;
                    continue;
                }
            }
            if (_tokenState & 6144 == 6144) {
                // <--- auto transition --->
                _tokenState &= ~uint(6144);
                _tokenState |= 32768;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
