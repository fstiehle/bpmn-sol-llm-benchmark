// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-14T00:44:38.107Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_926e6635_4ca0_494a_9be5_5ebe28fa8c6d {
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
                // <--- Start Event --->
                // <--- auto transition  --->
                _tokenState &= ~uint(1);
                _tokenState |= 4;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-984B95C1-C450-4BCC-A703-06A3F1E372B8 --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- Parallel Gateway sid-104B5171-075C-4A0F-852E-0F94E5A34A83 --->
                // <--- auto transition  --->
                _tokenState &= ~uint(4);
                _tokenState |= 2;
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 8 == 8) {
                // <--- End Event sid-F1912EE6-BC6D-4DC9-95A3-8FF45F91F19E --->
                // <--- auto transition  --->
                _tokenState &= ~uint(8);
                _tokenState |= 0;
                continue;
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- End Event sid-F1912EE6-BC6D-4DC9-95A3-8FF45F91F19E --->
                // <--- auto transition  --->
                _tokenState &= ~uint(32);
                _tokenState |= 0;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
