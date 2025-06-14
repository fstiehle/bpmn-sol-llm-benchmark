// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:26:18.118Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_Choreography {
    uint public tokenState = 1;
    address[3] public participants;
    uint public conditions;

    constructor(address[3] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask_1vnykqp Order goods --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 32;
                    continue;
                } else {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <---  auto transition  --->
                _tokenState &= ~uint(4);
                _tokenState |= 8;
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask_16lc74v Produce goods --->
                if (2 == id && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask_07t2zjo Inform customer --->
                if (3 == id && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <---  auto transition  --->
                _tokenState &= ~uint(64);
                _tokenState |= 256;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // <---  auto transition  --->
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                continue;
            }
            if (_tokenState & 256 == 256) {
                // <---  auto transition  --->
                _tokenState &= ~uint(256);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask_056ylqg Ship goods --->
                if (4 == id && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
