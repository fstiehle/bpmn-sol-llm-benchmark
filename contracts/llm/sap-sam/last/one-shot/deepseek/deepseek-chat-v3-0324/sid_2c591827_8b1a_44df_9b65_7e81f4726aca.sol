// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:44:25.453Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_2c591827_8b1a_44df_9b65_7e81f4726aca {
    uint public tokenState = 1;
    address[13] public participants;
    uint public conditions;
    
    constructor(address[13] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask_1ED0DF23 First contact --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_08335AEB Inform Publisher --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask_EEFBB567 Instructions for publication --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask_F3EC0F07 drafts --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask_879015FA Request for publishing --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask_4876DF19 cancel publishing --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 8 == 8) {
                // <---  auto transition  --->
                _tokenState &= ~uint(8);
                _tokenState |= 256;
                continue;
            }
            if (_tokenState & 256 == 256) {
                // <---  auto transition  --->
                _tokenState &= ~uint(256);
                _tokenState |= 16 | 128;
                continue;
            }
            if (_tokenState & 64 == 64) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 8;
                    continue;
                }
                // <---  auto transition  --->
                _tokenState &= ~uint(64);
                _tokenState |= 0;
                break; // is end
            }
            break;
        }
        tokenState = _tokenState;
    }
}
