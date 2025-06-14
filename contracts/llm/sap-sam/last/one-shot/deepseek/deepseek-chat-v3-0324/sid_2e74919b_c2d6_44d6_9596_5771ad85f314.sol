// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:46:51.676Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_2e74919b_c2d6_44d6_9596_5771ad85f314 {
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
                // <--- sid-181F9D56-226F-4071-A541-5B34611F8C21 Auf Reservierung prüfen --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
                // <--- default transition --->
                _tokenState &= ~uint(2);
                _tokenState |= 4;
                continue;
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-E4C67638-32F7-4EF7-B567-F5CDC766B074 Freies Zimmer verfügbar --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-3791BA58-F1EE-48E9-A212-E6FBC50B3AAC Schlüssel aushändigen --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 8;
                    continue;
                }
                // <--- default transition --->
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-95D5D543-0404-4C29-98F8-FD3EA102C79F In anderes Hotel verwiesen --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- auto transition --->
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // <--- auto transition --->
                _tokenState &= ~uint(128);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
