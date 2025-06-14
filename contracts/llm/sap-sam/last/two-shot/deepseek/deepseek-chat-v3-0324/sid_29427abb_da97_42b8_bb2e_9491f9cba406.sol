// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T21:07:59.263Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_29427abb_da97_42b8_bb2e_9491f9cba406 {
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
                // <--- sid-0E2FFC62-7785-4536-B540-A2CEEEBCD7BF prijavljivanje problema --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 2 == 2) {
                // <--- sid-3FF02039-7912-495C-A954-1180AA9D542F dobijanje detaljnog opisa problema --->
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                } else {
                    // <--- default transition --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // <--- sid-219196E3-11E9-4006-A960-CBA666C8F5A7 davanje instrukcija za resavanje problema --->
                if (3 == id && msg.sender == participants[5]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            
            if (_tokenState & 16 == 16) {
                // <--- sid-5E468D82-5C58-4448-B00F-975F17DB1452 prosledjivanje problema tehnickoj podrsci --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 32 == 32) {
                // <--- sid-C87CD8DA-DBB1-49FF-80DF-7C6E9D6FB5D8 dostavljanje resenja --->
                if (5 == id && msg.sender == participants[9]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
