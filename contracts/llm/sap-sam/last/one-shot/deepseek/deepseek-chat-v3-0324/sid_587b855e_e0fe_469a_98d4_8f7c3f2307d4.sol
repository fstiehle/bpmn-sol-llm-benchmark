// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:11:31.181Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_one_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
    uint public tokenState = 1;
    address[6] public participants;
    uint public conditions;
    
    constructor(address[6] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- StartEvent --->
                _tokenState &= ~uint(1);
                _tokenState |= 14;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_998BF84A Issue Report to Client --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask_840A8FCC Issue report to registry --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask_78E1385A Issue report to accounts receivable --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 14 == 14) {
                // <--- ParallelGateway_AD166EA9 Split --->
                _tokenState &= ~uint(14);
                _tokenState |= 2 | 4 | 8;
                continue;
            }
            if (_tokenState & 448 == 448) {
                // <--- ParallelGateway_6DBB1636 Join --->
                _tokenState &= ~uint(448);
                _tokenState |= 1024;
                continue;
            }
            if (_tokenState & 1024 == 1024) {
                // <--- EndEvent --->
                _tokenState &= ~uint(1024);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
