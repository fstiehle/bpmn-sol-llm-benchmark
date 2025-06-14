// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:40:33.234Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;
    
    constructor(address[8] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- task1 --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- task2 --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- task3 --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- task4 --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 6 == 6) {
                // <--- parallelGateway join --->
                _tokenState &= ~uint(6);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <--- eventBasedGateway --->
                _tokenState &= ~uint(32);
                _tokenState |= 8 | 16;
                continue;
            }
            if (_tokenState & 8 == 8) {
                // <--- endEvent from task3 --->
                _tokenState &= ~uint(8);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
