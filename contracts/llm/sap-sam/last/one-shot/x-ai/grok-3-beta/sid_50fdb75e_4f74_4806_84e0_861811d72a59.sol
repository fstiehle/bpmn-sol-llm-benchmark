// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:51:48.694Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_50fdb75e_4f74_4806_84e0_861811d72a59 {
    uint public tokenState = 1; // Start with the first position active
    address[20] public participants; // 20 participants as per the provided mapping
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Task 1: Anmelden in der App (sid-255C7D85-0BDF-41BF-A5AB-FDC3145ACE42)
            if (_tokenState & 1 == 1) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next state (gateway)
                    taskID = 0;
                    continue;
                }
            }
            // Gateway: sid-DC62831A-AD81-4F38-9E42-1F4C88BA4F92
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // Move to Task 3 (sid-76CF605B-88C2-46BE-8DB3-549A7296C8CE)
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Default path to Task 2 (sid-45E9AFFD-A781-45E8-8249-C294E338952D)
                    continue;
                }
            }
            // Task 2: Anmeldung fehlgeschlagen (sid-45E9AFFD-A781-45E8-8249-C294E338952D)
            if (_tokenState & 4 == 4) {
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0; // Move to end
                    taskID = 0;
                    break;
                }
            }
            // Task 3: Anmeldung erfolgreich (sid-76CF605B-88C2-46BE-8DB3-549A7296C8CE)
            if (_tokenState & 8 == 8) {
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to Task 4
                    taskID = 0;
                    continue;
                }
            }
            // Task 4: Support-Kontakt suchen (sid-F3211469-475B-4D44-B145-C8EF46DA9A8A)
            if (_tokenState & 16 == 16) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Task 5
                    taskID = 0;
                    continue;
                }
            }
            // Task 5: Support anrufen und Schaden melden (sid-0FC3E8D1-B5FC-4BC5-854E-152C01FD4981)
            if (_tokenState & 32 == 32) {
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Task 6
                    taskID = 0;
                    continue;
                }
            }
            // Task 6: Schaden weiterleiten (sid-882839CF-964B-41C9-BE45-7D9AC768F2A3)
            if (_tokenState & 64 == 64) {
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to Task 7
                    taskID = 0;
                    continue;
                }
            }
            // Task 7: Fahrrad-Standort suchen (sid-D18D1659-6F68-4FF0-ABF4-8D21BA265F5E)
            if (_tokenState & 128 == 128) {
                if (taskID == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to Task 10
                    taskID = 0;
                    continue;
                }
            }
            // Task 10: Fahrrad in der App sperren (sid-1E11A6C8-0BFD-4A87-BEE5-C1A0CD1B3511)
            if (_tokenState & 256 == 256) {
                if (taskID == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to Task 8
                    taskID = 0;
                    continue;
                }
            }
            // Task 8: Schaden reparieren (sid-BDDE6538-49E6-4DB2-9687-ED99B467FC25)
            if (_tokenState & 512 == 512) {
                if (taskID == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Move to Task 9
                    taskID = 0;
                    continue;
                }
            }
            // Task 9: Fahrrad freistellen (sid-CFAC808C-29D8-483A-8C38-C3A475F76D99)
            if (_tokenState & 1024 == 1024) {
                if (taskID == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0; // Move to end
                    taskID = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}