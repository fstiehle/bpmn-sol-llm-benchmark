// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:25:41.937Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_6aff5cab_5e98_4188_a1ac_32801e4463a1 {
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
                // <--- sid-3F775A63-8F88-4A2D-BFB3-9ED51BB135AA Make offer --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                if (1 == id) {
                    // <--- sid-B2A38002-B4CD-4F5D-888D-E1ACE18171B2 eventBasedGateway --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 12;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-C7391D76-8597-40A5-A68E-E087ABAF6F95 Reject offer --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-45B02DFF-777A-49A8-8650-349417988200 Book travel --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-D176C9DD-F425-47B1-9296-E2C6026571C0 Payment --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-FD2EFD26-A287-40C7-B1D5-591CF001FD2C Order ticket --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                if (5 == id) {
                    // <--- sid-7B3D319C-003D-46CA-996D-B14EE586AA57 eventBasedGateway --->
                    _tokenState &= ~uint(64);
                    if (conditions & 1 == 1) {
                        _tokenState |= 128;
                    } else {
                        _tokenState |= 256;
                    }
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-95C196A9-B381-4B95-B589-4CFBF59971FE Confirm payment --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-9D821BB7-F9B4-440B-B613-BA3E68DB760C Refuse payment --->
                if (7 == id && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32768 == 32768) {
                // <--- sid-ABE9C51C-1BC9-4BCD-82EB-4083DCA875E6 endEvent --->
                _tokenState &= ~uint(32768);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
