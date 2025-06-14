// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T21:32:55.172Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_529fb700_2c71_4e92_ade0_78e677ee2f52 {
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
                // <--- sid-1C226C51-E363-4826-BA85-0F703F531C64 Klijent ima problem --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-B693B53E-A351-4847-9941-52BDE15E747B Dobijanje detaljnog opisa problema --->
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-F7291B89-FE8B-473D-B610-791411865F5E Trazenje pomoci --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-7413834A-8E39-4E40-85A2-38B4562914F7 Trazenje pomoci --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-9C89324C-4B6B-46F0-876E-F192CA444D22 Resavanje problema --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-46DD2450-9E9B-445D-814D-C554364C7F81 Resavanje problema --->
                if (6 == id && msg.sender == participants[11]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- sid-A23868C2-A1D7-4BBA-A3EE-D9A6EC69A0DD Resavanje problema --->
                if (7 == id && msg.sender == participants[13]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 1024;
                    continue;
                } else {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                if (conditions & 2 == 2) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 256;
                    continue;
                } else {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <---  auto transition  --->
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                continue;
            }
            if (_tokenState & 512 == 512) {
                // <---  auto transition  --->
                _tokenState &= ~uint(512);
                _tokenState |= 1024;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
