// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:45:47.252Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_3406c2ea_744f_4829_b96a_36cd98fa7c13 {
    uint public tokenState = 1; // Start with the start event active
    address[22] public participants;
    uint public conditions;

    constructor(address[22] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event to Task 1 (sid-7A6D2EC5-97F9-41C7-AA12-8533B2A978CE)
            if (_tokenState & 1 == 1) {
                if (taskID == 1 && msg.sender == participants[0]) { // Kunde initiating
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to gateway sid-ADB28F9F-9693-486D-890B-4A1EE4106A01
                    taskID = 0;
                    continue;
                }
            }

            // Gateway sid-ADB28F9F-9693-486D-890B-4A1EE4106A01 (Converging)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                _tokenState |= 4; // Default path to Task 2 (sid-2B34D3A5-E5DC-4813-B56A-69BA0DDDD357)
                continue;
            }

            // Task 2: sid-2B34D3A5-E5DC-4813-B56A-69BA0DDDD357 (Angebot stellen)
            if (_tokenState & 4 == 4) {
                if (taskID == 2 && msg.sender == participants[2]) { // Werbeagentur initiating
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to gateway sid-F726F0A0-F3A2-4DE5-8DB0-9FB14E37ED3D
                    taskID = 0;
                    continue;
                }
            }

            // Gateway sid-F726F0A0-F3A2-4DE5-8DB0-9FB14E37ED3D (Diverging)
            if (_tokenState & 8 == 8) {
                _tokenState &= ~uint(8);
                if (conditions & 1 == 1) {
                    _tokenState |= 16; // Path to Task 5 (sid-033B60DD-1C6E-4D1B-9574-8CD685DEEC42)
                } else if (conditions & 2 == 2) {
                    _tokenState |= 32; // Path to Task 3 (sid-32373B24-9806-40FC-A1E8-E263E51D1057)
                } else {
                    _tokenState |= 64; // Default path to Task 4 (sid-4A1D27ED-C77F-4B5D-99A8-DB09C3577A0E)
                }
                continue;
            }

            // Task 3: sid-32373B24-9806-40FC-A1E8-E263E51D1057 (Aenderung anfragen)
            if (_tokenState & 32 == 32) {
                if (taskID == 3 && msg.sender == participants[4]) { // Kunde initiating
                    _tokenState &= ~uint(32);
                    _tokenState |= 2; // Loop back to gateway sid-ADB28F9F-9693-486D-890B-4A1EE4106A01
                    taskID = 0;
                    continue;
                }
            }

            // Task 4: sid-4A1D27ED-C77F-4B5D-99A8-DB09C3577A0E (Auftrag senden)
            if (_tokenState & 64 == 64) {
                if (taskID == 4 && msg.sender == participants[6]) { // Kunde initiating
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to gateway sid-C4AE4C53-121B-4BE0-B7EC-2D87282BD352
                    taskID = 0;
                    continue;
                }
            }

            // Task 5: sid-033B60DD-1C6E-4D1B-9574-8CD685DEEC42 (Absage senden)
            if (_tokenState & 16 == 16) {
                if (taskID == 5 && msg.sender == participants[8]) { // Kunde initiating
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // Move to end event
                    break;
                }
            }

            // Gateway sid-C4AE4C53-121B-4BE0-B7EC-2D87282BD352 (Converging)
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                _tokenState |= 256; // Default path to Task 6 (sid-208576A6-E551-4B40-8BFB-180FBB9CA81F)
                continue;
            }

            // Task 6: sid-208576A6-E551-4B40-8BFB-180FBB9CA81F (Anfrage stellen)
            if (_tokenState & 256 == 256) {
                if (taskID == 6 && msg.sender == participants[10]) { // Werbeagentur initiating
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to gateway sid-F8DDC641-8806-488E-85B1-1D9252C11FC1
                    taskID = 0;
                    continue;
                }
            }

            // Gateway sid-F8DDC641-8806-488E-85B1-1D9252C11FC1 (Diverging)
            if (_tokenState & 512 == 512) {
                _tokenState &= ~uint(512);
                if (conditions & 4 == 4) {
                    _tokenState |= 1024; // Path to Task 7 (sid-E39CFE77-E760-4E6D-B257-03502B5BD04F)
                } else {
                    _tokenState |= 2048; // Default path to Task 8 (sid-678F1659-35AA-4CC5-AB06-B1C0AD9F16DD)
                }
                continue;
            }

            // Task 7: sid-E39CFE77-E760-4E6D-B257-03502B5BD04F (Verfuegbarkeit absagen)
            if (_tokenState & 1024 == 1024) {
                if (taskID == 7 && msg.sender == participants[12]) { // Grafiker initiating
                    _tokenState &= ~uint(1024);
                    _tokenState |= 128; // Loop back to gateway sid-C4AE4C53-121B-4BE0-B7EC-2D87282BD352
                    taskID = 0;
                    continue;
                }
            }

            // Task 8: sid-678F1659-35AA-4CC5-AB06-B1C0AD9F16DD (Verfuegbarkeit bestaetigen)
            if (_tokenState & 2048 == 2048) {
                if (taskID == 8 && msg.sender == participants[14]) { // Grafiker initiating
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096; // Move to Task 9 (sid-DFD49704-139E-44DF-8E10-E71080163B76)
                    taskID = 0;
                    continue;
                }
            }

            // Task 9: sid-DFD49704-139E-44DF-8E10-E71080163B76 (Auftrag erstellen)
            if (_tokenState & 4096 == 4096) {
                if (taskID == 9 && msg.sender == participants[16]) { // Werbeagentur initiating
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192; // Move to Task 10 (sid-5DE29D81-E263-4AF0-8F8B-D6F611C543F5)
                    taskID = 0;
                    continue;
                }
            }

            // Task 10: sid-5DE29D81-E263-4AF0-8F8B-D6F611C543F5 (Grafik verschicken)
            if (_tokenState & 8192 == 8192) {
                if (taskID == 10 && msg.sender == participants[18]) { // Grafiker initiating
                    _tokenState &= ~uint(8192);
                    _tokenState |= 16384; // Move to Task 11 (sid-5C840AD1-6813-4439-90B5-2F1C831321E4)
                    taskID = 0;
                    continue;
                }
            }

            // Task 11: sid-5C840AD1-6813-4439-90B5-2F1C831321E4 (Anzeige uebermitteln)
            if (_tokenState & 16384 == 16384) {
                if (taskID == 11 && msg.sender == participants[20]) { // Werbeagentur initiating
                    _tokenState &= ~uint(16384);
                    _tokenState |= 0; // Move to end event
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}