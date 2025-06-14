// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T22:19:56.714Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_9f1baa6b_3120_4b80_a997_c90b03aee22b {
    uint public tokenState = 1;
    address[18] public participants;
    uint public conditions;
    
    constructor(address[18] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-B42E1B08-155A-4A95-9B09-E46F90D9B584 Make travel offer --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-EFD4788E-A1A4-40E5-A500-0970010990DD Place order --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-1FD8BD65-616D-4C0C-92A1-E591AA72FAD0 Reject Order --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break; // is end
                }
                // <--- sid-FBCC0E56-C042-4E45-917E-0E8620D644D3 Apply order --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-6676D52C-DF78-4BB4-885E-3E6236D6B9D3 Confirm booking --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-6EE679BB-748F-4253-B501-87CCF2E0D7D0 Pay travel --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-8D8EFFEB-C49E-4DC9-B6B6-8AC520B8A50C Order ticket --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-795C6F26-3630-45A8-BAB6-DE8820B8DBB0 Refuse payment --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0;
                    break; // is end
                }
                // <--- sid-49741E13-1B13-422C-8AD2-6B8241F6E32E Confirm payment --->
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 128 == 128) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 64;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
