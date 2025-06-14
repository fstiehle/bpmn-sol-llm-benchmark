// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T21:53:42.593Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_7587b36b_ea62_4f16_9d3a_a151fb21e145 {
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
                // <--- sid-B12D1FA0-2A7A-4047-BBE1-1513753A1920 Make travel offer --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    // <--- offer accepted --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
                if (conditions & 2 == 2) {
                    // <--- offer rejected --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-8F01D694-17C7-455C-9CF0-882221C2B676 Book travel --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-D67A86B4-8828-4891-8746-014EC74F0330 Reject offer --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-F0B0307D-27F6-4D4B-B922-3CF229321E40 Pay travel --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-B42401DD-F1BD-47A4-A854-01E6A66D12FF Order ticket --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                if (conditions & 4 == 4) {
                    // <--- payment confirmed --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    continue;
                }
                if (conditions & 8 == 8) {
                    // <--- payment refused --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-E5E15A79-4F3E-4236-A0B7-D869B828DD8A Confirm payment --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-8B3FC931-BDFA-4E9B-9C1D-B12AAE6E7AF5 Refuse payment --->
                if (7 == id && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
