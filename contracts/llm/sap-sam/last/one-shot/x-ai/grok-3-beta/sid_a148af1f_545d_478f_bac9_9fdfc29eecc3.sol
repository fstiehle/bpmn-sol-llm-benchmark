// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:11:47.446Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_a148af1f_545d_478f_bac9_9fdfc29eecc3 {
    uint public tokenState = 1; // Start event active at bit 0
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event auto transition to Task 1
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1 (sid-38D52F50-00D1-46EE-9D20-32A7DC008B1A)
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Task 1: Registrierung ausloesen (sid-38D52F50-00D1-46EE-9D20-32A7DC008B1A)
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Task 2 (sid-5C265212-5FCE-43E9-9A48-B3B4FB70DF1A)
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 2: Oeffnet Fenster (sid-5C265212-5FCE-43E9-9A48-B3B4FB70DF1A)
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Task 3 (sid-BDCC0641-55FF-4B0C-8B02-3BF67FE47793)
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task 3: Gibt Daten ein (sid-BDCC0641-55FF-4B0C-8B02-3BF67FE47793)
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Task 4 (sid-2B8C19D7-C75E-425F-81DB-214DD515716F)
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 4: Zwischenspeichert Daten (sid-2B8C19D7-C75E-425F-81DB-214DD515716F)
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate Gateway sid-A7F0709B-E388-4BDA-9FB6-8C2E7429F518
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Gateway sid-A7F0709B-E388-4BDA-9FB6-8C2E7429F518 (Converging)
                _tokenState &= ~uint(32);
                _tokenState |= 64; // Activate Task 5 (sid-9275365C-B8F4-455B-B549-DC43B42AA447)
                continue;
            }
            if (_tokenState & 64 == 64) {
                // Task 5: Gibt Passwort nochmals ein (sid-9275365C-B8F4-455B-B549-DC43B42AA447)
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Task 6 (sid-E839E9F0-3517-4B2E-BED2-0859E630C364)
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Task 6: Prueft auf Uebereinstimmung (sid-E839E9F0-3517-4B2E-BED2-0859E630C364)
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Gateway sid-B14593A7-6DCB-4648-B486-794E99F68631
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Gateway sid-B14593A7-6DCB-4648-B486-794E99F68631 (Diverging)
                _tokenState &= ~uint(256);
                if (conditions & 1 == 1) {
                    _tokenState |= 512; // Activate Task 7 (sid-78623B09-132D-475B-A1B5-DCE794B0B54E)
                } else {
                    _tokenState |= 32; // Default to Gateway sid-A7F0709B-E388-4BDA-9FB6-8C2E7429F518
                }
                continue;
            }
            if (_tokenState & 512 == 512) {
                // Task 7: Bestaetigt Registrierung (sid-78623B09-132D-475B-A1B5-DCE794B0B54E)
                if (taskID == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate Task 8 (sid-D3CF1679-CC03-4106-918E-D9980A50FE7D)
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // Task 8: Speichert Daten ab (sid-D3CF1679-CC03-4106-918E-D9980A50FE7D)
                if (taskID == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Activate End Event
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // End event
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}