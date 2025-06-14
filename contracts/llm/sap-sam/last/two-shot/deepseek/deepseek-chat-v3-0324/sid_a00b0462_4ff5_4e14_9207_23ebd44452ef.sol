// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T22:20:09.925Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_a00b0462_4ff5_4e14_9207_23ebd44452ef {
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
                // <--- sid-AD74E23D-6D70-4941-9114-C2A9AE812386 Slanje problema --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-98FBCA10-0820-49F0-BCE5-73950F33DF03 Dobijanje detaljnog opisa problema --->
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
                // <---  auto transition  --->
                _tokenState &= ~uint(4);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-4DC770E3-8BE9-487F-BA09-20DA760F80FD Trazenje resenja --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                }
                // <---  auto transition  --->
                _tokenState &= ~uint(32);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-A608F0E5-61C5-4C6B-95BD-3B764B7F6D1C Trazenje resenja --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <---  auto transition  --->
                _tokenState &= ~uint(256);
                _tokenState |= 512;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-57C02DC5-E10C-4152-8DA3-6CC6B2365315 Slanje resenja --->
                if (5 == id && msg.sender == participants[9]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <---  auto transition  --->
                _tokenState &= ~uint(512);
                _tokenState |= 8;
                continue;
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-0174419F-56DC-4BDD-90B4-FED8789180E4 Slanje resenja --->
                if (3 == id && msg.sender == participants[5]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
