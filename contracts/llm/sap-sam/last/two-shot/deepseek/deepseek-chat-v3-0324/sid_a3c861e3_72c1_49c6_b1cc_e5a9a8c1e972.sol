// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T22:24:09.203Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_a3c861e3_72c1_49c6_b1cc_e5a9a8c1e972 {
    uint public tokenState = 1;
    address[4] public participants;
    uint public conditions;
    
    constructor(address[4] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-984B95C1-C450-4BCC-A703-06A3F1E372B8  --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
                // <--- sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A  --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <---  auto transition  --->
                _tokenState &= ~uint(2);
                _tokenState |= 0;
                break;
            }
            if (_tokenState & 4 == 4) {
                // <---  auto transition  --->
                _tokenState &= ~uint(4);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
