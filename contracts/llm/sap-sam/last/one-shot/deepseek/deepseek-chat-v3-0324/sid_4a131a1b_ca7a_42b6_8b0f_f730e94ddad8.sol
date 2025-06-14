// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:01:11.136Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_4a131a1b_ca7a_42b6_8b0f_f730e94ddad8 {
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
                // <--- sid-6F0CC474-0DE0-473D-806B-948E25F93FFA aa --->
                if (1 == taskID && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                } else {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-B2024251-8DE3-41A1-9596-A5E6788A71AF aadas --->
                if (2 == taskID && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-CB238E79-5376-4273-8A2F-3B9C56572F77 a --->
                if (3 == taskID && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <---  auto transition  --->
                _tokenState &= ~uint(16);
                _tokenState |= 0;
                break; // is end
            }
            break;
        }
        tokenState = _tokenState;
    }
}
