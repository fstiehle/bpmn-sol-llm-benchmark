// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:00:49.506Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_4a070cda_ba8f_4133_9dc4_b819d8069c3d {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;
    
    constructor(address[14] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-8382BE04-333B-4CFB-8F63-AF54B9DC4243 place book order --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-6F700DF7-4544-413A-8DED-F158468BA83E place confirmback order --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-A9CAF9F4-C96A-433F-A9E2-B1852E424450 send invoice --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-FA1EC6B2-A97F-451B-848C-2653F126F817 send shipment information --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-0B14E175-63F6-4EA0-A1A3-3EBC30E807B7 issueshipment --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-FDFE5AC6-2C1C-4A5D-8208-747618BC9359 deliver shipment --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-05AA275D-E5B4-4A74-BA38-E31D1EC4EDB9 send payment --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 4 == 4) {
                // Parallel gateway split
                _tokenState &= ~uint(4);
                _tokenState |= 8 | 4;
                continue;
            }
            if (_tokenState & 192 == 192) {
                // Parallel gateway join
                _tokenState &= ~uint(192);
                _tokenState |= 128;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
