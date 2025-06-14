// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T20:08:33.809Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_one_shot_sid_a0a6bc07_66a5_4c5b_8cb4_e810e986932c {
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
                // <--- ChoreographyTask sid-C0A1EAF6-72BE-4733-817D-D9CDD3F1D5E4 Problem schildern --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask sid-69BA1A06-C37D-48D0-B43D-B9D0CAE2A281 Problem besprechen --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask sid-B4C50627-5A0A-4352-B049-F76B5A945616 Problem geloest --->
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask sid-154D7D60-2E88-4DCB-AE1F-A1BFEB9F2EA5 Notiz senden --->
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask sid-B06C37A2-496C-4024-BCD7-8C2C776A06BD Problem schildern --->
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask sid-ACA61CA4-C1CA-4A07-BD58-3D4EEFECF95F Problem vor Ort loesen --->
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask sid-3EB52EB9-A019-42DF-8709-F1C10B3EB532 Auftragsbericht unterschreiben lassen --->
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
                // <---  default transition  --->
                _tokenState &= ~uint(4);
                _tokenState |= 8;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
