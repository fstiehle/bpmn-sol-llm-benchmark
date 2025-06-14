// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:17:23.340Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_3e07c84d_0ca6_4b3f_9118_1e9edc4f027c {
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
                // ChoreographyTask sid-1EEA8E35-38D9-4FA1-AD89-1380EF74F425 Slanje problema
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-7DA2D550-BF2F-4BE1-A17F-72BEFA131839 Dobijanje detaljnog opisa
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-77FF34A1-BFC9-406C-B7BC-C8DD53FB2187 Slanje resenja
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-0C6B5BE7-D2C2-48E8-94C3-DE5D1AA9CDFD Trazenje resenja
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-61410FD0-64FC-4D89-BBAF-C6EDE6861197 Slanje resenja
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-2C0C7772-B797-4324-8FB6-4D73E6242CB4 Trazenje resenja
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-C7F2CE33-2A7A-4B81-BF90-98D5373BC5B5 Slanje resenja
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway sid-7DEAF8F3-7048-4D51-B790-6A8016EA5D34
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Exclusive Gateway sid-EA1AC6C8-B53F-4C26-BA30-5796CA6184D4
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
