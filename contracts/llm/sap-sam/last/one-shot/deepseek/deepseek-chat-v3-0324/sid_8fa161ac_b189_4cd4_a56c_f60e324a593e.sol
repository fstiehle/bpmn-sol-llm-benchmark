// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T19:30:46.552Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_8fa161ac_b189_4cd4_a56c_f60e324a593e {
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
                // <--- ChoreographyTask_1 slanje problema --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_2 opisivanje problema --->
                if (2 == id && msg.sender == participants[3]) {
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
                    _tokenState |= 32;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask_4 konsultovanje PPN --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                if (conditions & 2 == 2) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <---  auto transition  --->
                _tokenState &= ~uint(32);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask_6 slanje opisa problema --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <---  auto transition  --->
                _tokenState &= ~uint(128);
                _tokenState |= 512;
                continue;
            }
            if (_tokenState & 256 == 256) {
                // <--- ChoreographyTask_7 slanje resenja i objasnjenja --->
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- ChoreographyTask_5 slanje resenja --->
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <---  auto transition  --->
                _tokenState &= ~uint(1024);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 2048 == 2048) {
                // <---  auto transition  --->
                _tokenState &= ~uint(2048);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 4096 == 4096) {
                // <--- ChoreographyTask_3 slanje resenja --->
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
