// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T21:28:30.624Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_two_shot_sid_4f03bfac_6870_4951_8bba_a7e16355e589 {
    uint public tokenState = 1;
    address[22] public participants;
    uint public conditions;

    constructor(address[22] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-83CB8E6A-7855-491F-ACE4-5568B085B0AA Fragt Werbeanzeige an --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-2C45C0B5-E718-4493-9F12-EA484F4A9002 Sendet Angebot --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-CC8C53B3-1170-4020-887C-0A8DD1833C47 aeussert Aenderungswunsch --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-ACFEBAF1-ED9D-4EEC-82A4-E17E3BABF1A3 erteilt Auftrag --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-155E169F-4D9C-43D8-AEBD-812EE590BBAE Fragt Verfuegbarkeit an --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-582D082F-E935-4D39-8D4F-684C36A51CD9 erteilt Auftrag --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-5A5EEB58-D5C0-4F44-AD9E-253CA3C6EA66 liefert Grafik --->
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-B2528142-9302-43B2-AB89-491A0232D7AF erfragt Freigabe --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- sid-7AEEA2EE-8510-42E5-9332-EE09CBBC71AE Erteilt Freigabe --->
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 2048 == 2048) {
                // <--- sid-7A4631E5-4035-4BC3-B06D-F0185FA000A3 sendet Aenderungswunsch --->
                if (11 == id && msg.sender == participants[20]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
