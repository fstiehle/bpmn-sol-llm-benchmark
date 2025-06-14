// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:19:34.007Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_640bbb71_018f_49b9_b1bf_87ab98bd4f71 {
    uint public tokenState = 1;
    address[24] public participants;
    uint public conditions;
    
    constructor(address[24] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-4B3ECD74-1D9C-4430-A457-8B72E38B10FD Bestellknopf drücken --->
                if (1 == taskID && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-38A39E8F-5B1F-46CD-A7A3-7C71137383E6 Informiert über Bestellung --->
                if (2 == taskID && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-F1E75F36-A3A8-4A56-9C96-85F5CCD11D12 geht zum Tisch --->
                if (3 == taskID && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-E94EF6B4-AC04-46EA-834A-FD0AE23781C0 Bestellt --->
                if (4 == taskID && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-EB252737-D08A-481E-8CF5-B6222911541C gibt Bestellung ein --->
                if (5 == taskID && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-87491312-B858-48B4-ADB8-705EE96D1E69 Informiert --->
                if (6 == taskID && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-F24925AF-54C1-4F4A-970A-CF58C7FBEA39 bearbeitet Bestellung --->
                if (7 == taskID && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-DFCB693D-6872-4303-BAEA-59EF4B8B6B54 meldet fertige Bestellung --->
                if (8 == taskID && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-5B33B74D-A983-4FDC-93B8-9047159D1E43 Informiert --->
                if (9 == taskID && msg.sender == participants[16]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-19608D35-5BBF-4BEA-8ECD-A92D2493303A Holt Bestellung ab --->
                if (10 == taskID && msg.sender == participants[18]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- sid-56AA5D29-29B5-470F-AF0F-DA7A9EFCFBFE Bringt Bestellung zum Tisch --->
                if (11 == taskID && msg.sender == participants[20]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // <--- sid-E280D42C-AC69-4910-8644-03126F28FEFD übergibt Bestellung --->
                if (12 == taskID && msg.sender == participants[22]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
