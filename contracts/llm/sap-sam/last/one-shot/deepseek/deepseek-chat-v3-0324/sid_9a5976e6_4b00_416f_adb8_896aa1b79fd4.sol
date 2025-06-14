// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T22:39:36.627Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_9a5976e6_4b00_416f_adb8_896aa1b79fd4 {
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
                // <--- ChoreographyTask_1 Mitteilung über Rückrufware senden --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_2 Mitteilung über Rückrufware senden --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask_3 Beurteilung der Rückrufware senden --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask_4 Informationen über Rückrufaktion senden --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- ChoreographyTask_5 Rückrufware liefern --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- ChoreographyTask_6 Auftrag zum Rücktransport senden --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(512);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ExclusiveGateway sid-99D74F7C-9F2D-4C11-A8F2-0402AA255A2A --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 14;
                    continue;
                } else {
                    _tokenState &= ~uint(128);
                    _tokenState |= 1;
                    continue;
                }
            }
            if (_tokenState & 112 == 112) {
                // <--- ParallelGateway sid-BA0DCA8E-7741-428C-A564-536900613B64 --->
                _tokenState &= ~uint(112);
                _tokenState |= 512;
                continue;
            }
            if (_tokenState & 14 == 14) {
                // <--- ParallelGateway sid-89C0972A-DCBD-4A02-974F-4F6497F7C91F --->
                _tokenState &= ~uint(14);
                _tokenState |= 10;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
