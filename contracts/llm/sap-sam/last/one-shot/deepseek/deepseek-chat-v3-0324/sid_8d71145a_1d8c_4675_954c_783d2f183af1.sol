// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T19:29:45.627Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_8d71145a_1d8c_4675_954c_783d2f183af1 {
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
                // <--- oryx_17BDCD00-2EF4-4300-9B41-89E99AB80C1E Bewerbung abschicken --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- oryx_D2B4F66F-E45A-4EE5-BA1E-19823BBCB8C4 fehlende Unterlagen anfordern --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                if (conditions & 8 == 8) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- oryx_CAAC4136-6550-45D4-B9FF-DA7123ABC114 fehlende Unterlagen nachschicken --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <---  auto transition  --->
                _tokenState &= ~uint(32);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <---  auto transition  --->
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 128 == 128) {
                if (conditions & 2 == 2) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- oryx_AF21D2E5-26A2-4BDA-A13A-3505624B4560 Zusage versenden --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                if (conditions & 4 == 4) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- oryx_30B3598E-DF0D-402D-BD8A-BC8236E8E422 Immatrikulationsunterlagen versenden --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // <---  auto transition  --->
                _tokenState &= ~uint(2048);
                _tokenState |= 4096;
                continue;
            }
            if (_tokenState & 4096 == 4096) {
                // <---  auto transition  --->
                _tokenState &= ~uint(4096);
                _tokenState |= 0;
                break;
            }
            if (_tokenState & 128 == 128) {
                // <--- oryx_27A367A7-12ED-4EC6-BEDA-3DFD1B6BBA81 Absage versenden --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
