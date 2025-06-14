// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:30:32.049Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_one_shot_sid_72d6d5f6_e1bd_405d_a230_0fa6c54b6319 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;
    
    constructor(address[8] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-87BBD4F0-2401-4A17-803C-8B904256971A A --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6 B --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B A --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E B --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <---  auto transition  --->
                _tokenState &= ~uint(16);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <---  auto transition  --->
                _tokenState &= ~uint(32);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <---  auto transition  --->
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // <---  auto transition  --->
                _tokenState &= ~uint(128);
                _tokenState |= 0;
                break; // is end
            }
            if (_tokenState & 256 == 256) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 2;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                if (conditions & 2 == 2) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 12;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <---  auto transition  --->
                _tokenState &= ~uint(256);
                _tokenState |= 1;
                continue;
            }
            if (_tokenState & 512 == 512) {
                // <---  auto transition  --->
                _tokenState &= ~uint(512);
                _tokenState |= 128;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}