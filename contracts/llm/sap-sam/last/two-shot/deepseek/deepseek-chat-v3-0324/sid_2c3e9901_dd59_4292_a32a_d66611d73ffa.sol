// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T21:09:00.242Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_2c3e9901_dd59_4292_a32a_d66611d73ffa {
    uint public tokenState = 1;
    address[10] public participants;
    uint public conditions;
    
    constructor(address[10] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-4A166C13-1A80-4F15-8144-B00BB9EB0B27 Vastaanota tilaus --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-6E4D3B42-B6A3-460A-BFEA-16916482A898 Informoi asiakasta --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-3CC56E18-ED4C-4707-967E-8C4C476067C0 Lähetä lasku --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-51D6AEC7-B161-4529-9AF1-3965EB576E91 Vastaanota maksu --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-C3D62CC0-1119-4F36-AF35-7852DB9F7A5F Lähetä tilaus --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
                // <---  auto transition  --->
                _tokenState &= ~uint(2);
                _tokenState |= 4;
                continue;
            }
            if (_tokenState & 16 == 16) {
                // <---  auto transition  --->
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <---  auto transition  --->
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
