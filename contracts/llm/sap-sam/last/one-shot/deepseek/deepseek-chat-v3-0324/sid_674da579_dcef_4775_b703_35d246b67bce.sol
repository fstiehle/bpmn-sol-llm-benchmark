// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:22:09.827Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_674da579_dcef_4775_b703_35d246b67bce {
    uint public tokenState = 1;
    address[6] public participants;
    uint public conditions;
    
    constructor(address[6] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-7C541969-B28F-43BC-A336-4AE9114B733E Anfrage bearbeiten --->
                if (1 == taskID && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-1E15802F-4A68-429E-8EF9-89606F2F8533 Angebot erstellen --->
                if (2 == taskID && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-CB82D50A-555C-41E9-A8D0-359DFBC06DBA Buchungen durchführen --->
                if (3 == taskID && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
