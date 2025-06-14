// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T21:34:48.336Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_5823deaf_f759_45fe_9cab_90ce484355cd {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;
    
    constructor(address[12] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-0AB2B1E2-565E-492E-871C-50FF20A321C6 T1Propose supply plan --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-EE03DBA3-9FD6-4703-9BBC-D7F32BABD305 T2Reject proposal --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-88D3A0FA-60F7-4BC6-8785-C239506B46F9 T3Accept proposal --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-F8929F66-43D4-4F05-94E3-B254EB0E9B7B T4Offer counter-proposal --->
                if (4 == id && msg.sender == participants[7]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-AF2D4571-93CA-4D0A-B19E-9982DFA90B60 T5Accept counter-proposal --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-A3BC0953-F5BA-4D9B-9E2B-0871FDB6CB35 T6Reject counter-proposal --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <---  auto transition  --->
                _tokenState &= ~uint(2);
                _tokenState |= 28;
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <---  auto transition  --->
                _tokenState &= ~uint(32);
                _tokenState |= 192;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // <---  auto transition  --->
                _tokenState &= ~uint(128);
                _tokenState |= 0;
                break; // is end
            }
            break;
        }
        tokenState = _tokenState;
    }
}
