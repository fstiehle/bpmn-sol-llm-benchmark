// test openai/gpt-4.1 - one-shot at 2025-06-12T00:03:00.576Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_a148af1f_545d_478f_bac9_9fdfc29eecc3 {
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
            // Task 1: sid-38D52F50-00D1-46EE-9D20-32A7DC008B1A Registrierung ausloesen
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // custom code here
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // Task 2: sid-5C265212-5FCE-43E9-9A48-B3B4FB70DF1A Oeffnet Fenster
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    // custom code here
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // Task 3: sid-BDCC0641-55FF-4B0C-8B02-3BF67FE47793 Gibt Daten ein
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    // custom code here
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            // Task 4: sid-2B8C19D7-C75E-425F-81DB-214DD515716F Zwischenspeichert Daten
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    // custom code here
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // Exclusive Gateway: sid-A7F0709B-E388-4BDA-9FB6-8C2E7429F518
            // in: 16, 64; out: 32 (default)
            if (_tokenState & 16 == 16) {
                // Only default flow, auto to task 5
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // Only default flow, auto to task 5
                _tokenState &= ~uint(64);
                _tokenState |= 32;
                continue;
            }
            // Task 5: sid-9275365C-B8F4-455B-B549-DC43B42AA447 Gibt Passwort nochmals ein
            if (_tokenState & 32 == 32) {
                if (id == 5 && msg.sender == participants[8]) {
                    // custom code here
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            // Task 6: sid-E839E9F0-3517-4B2E-BED2-0859E630C364 Prueft auf Uebereinstimmung
            if (_tokenState & 128 == 128) {
                if (id == 6 && msg.sender == participants[10]) {
                    // custom code here
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            // Exclusive Gateway: sid-B14593A7-6DCB-4648-B486-794E99F68631
            // in: 256; out: 512 (default), 1024 (cond: conditions & 1 == 1)
            if (_tokenState & 256 == 256) {
                bool didTransition = false;
                if (conditions & 1 == 1) {
                    // to task 7
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    didTransition = true;
                }
                if (!didTransition) {
                    // default: to gateway sid-A7F0709B-E388-4BDA-9FB6-8C2E7429F518
                    _tokenState &= ~uint(256);
                    _tokenState |= 64;
                }
                continue;
            }
            // Task 7: sid-78623B09-132D-475B-A1B5-DCE794B0B54E bestaetigt Registrierung
            if (_tokenState & 1024 == 1024) {
                if (id == 7 && msg.sender == participants[12]) {
                    // custom code here
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            // Task 8: sid-D3CF1679-CC03-4106-918E-D9980A50FE7D Speichert Daten ab
            if (_tokenState & 2048 == 2048) {
                if (id == 8 && msg.sender == participants[14]) {
                    // custom code here
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // end
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}