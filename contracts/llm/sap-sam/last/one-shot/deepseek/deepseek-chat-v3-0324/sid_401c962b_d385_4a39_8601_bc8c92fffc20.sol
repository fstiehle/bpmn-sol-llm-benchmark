// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:57:43.389Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_one_shot_sid_401c962b_d385_4a39_8601_bc8c92fffc20 {
    uint public tokenState = 1;
    address[4] public participants;
    uint public conditions;
    
    constructor(address[4] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask sid-3AD9F529-B32A-4E6C-A6D1-D567688AD463 Call decision --->
                if (1 == taskID && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask sid-6E5C9418-EE6F-4ED9-9A40-F57E2E6489DE Call decision --->
                if (2 == taskID && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ParallelGateway sid-43E0C616-06CF-4862-8DC7-6439ED8C2B37 --->
                // <--- auto transition --->
                _tokenState &= ~uint(8);
                _tokenState |= 1;
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 3 == 3) {
                // <--- ParallelGateway sid-11160CCA-B21E-49DB-91E6-99CA0AD0E828 --->
                // <--- auto transition --->
                _tokenState &= ~uint(3);
                _tokenState |= 0;
                break; // is end
            }
            break;
        }
        tokenState = _tokenState;
    }
}
