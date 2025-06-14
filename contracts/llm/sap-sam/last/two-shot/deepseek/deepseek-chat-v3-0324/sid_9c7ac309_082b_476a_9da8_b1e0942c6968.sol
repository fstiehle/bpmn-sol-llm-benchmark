// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T22:17:58.622Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_9c7ac309_082b_476a_9da8_b1e0942c6968 {
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
                // <--- sid-91108EB7-E6BC-4698-B899-E87A6F6286BA Antragsformular ubermitteln --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-B354A127-0A5D-457E-940F-A5FD6B93DAB9 Formular weiterleiten --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-839A0098-79BF-4A7B-8859-9536463ECE67 Treffen Entscheidung --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-62FE5728-7B51-4DEC-B05A-F3782899E75F Vertrag wird abgeschlossen --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-E554BFD8-A719-4C64-A76E-20B9E08151DB informiert uber Ablehnung --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 8 == 8) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    continue;
                } else {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
