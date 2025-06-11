// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-11T20:04:30.231Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_one_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
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
                // <--- sid-227226E5-6AEA-41EF-A8B0-83C9A219227F Make travel offer --->
                if (1 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-C49AC673-113F-41E0-A8FF-FA0D5D2267FA Reject offer --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-C9EDEBCA-CFD7-47C8-B834-6275614314F0 Book Travel & confirm booking --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-A70C991E-702F-4C96-9488-D630468D3804 Pay Travel --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-46204067-2C7E-484E-8BC3-5979178FE4C4 Order ticket --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-D456077E-5BB6-474E-88EC-5C0B045B5F78 Confirm payment --->
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-85CDD208-375B-493C-808D-239AB05D7F30 Refuse payment --->
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- Exclusive Gateway diverging --->
                _tokenState &= ~uint(4);
                _tokenState |= 2;
                _tokenState |= 8;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <--- Exclusive Gateway diverging --->
                _tokenState &= ~uint(64);
                _tokenState |= 256;
                _tokenState |= 512;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // <--- End Event Offer canceled --->
                _tokenState &= ~uint(128);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}