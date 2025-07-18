// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:57:25.772Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_a148af1f_545d_478f_bac9_9fdfc29eecc3 {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-38D52F50-00D1-46EE-9D20-32A7DC008B1A Registrierung ausloesen --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-5C265212-5FCE-43E9-9A48-B3B4FB70DF1A Oeffnet Fenster --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-BDCC0641-55FF-4B0C-8B02-3BF67FE47793 Gibt Daten ein --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-2B8C19D7-C75E-425F-81DB-214DD515716F Zwischenspeichert Daten --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-9275365C-B8F4-455B-B549-DC43B42AA447 Gibt Passwort nochmals ein --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-E839E9F0-3517-4B2E-BED2-0859E630C364 Prueft auf Uebereinstimmung --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-78623B09-132D-475B-A1B5-DCE794B0B54E bestaetigt Registrierung --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-D3CF1679-CC03-4106-918E-D9980A50FE7D Speichert Daten ab --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState = 0;
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- auto transition --->
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 128 == 128) {
                if (conditions & 1 == 1) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                } else {
                    // <--- auto transition --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 16;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
