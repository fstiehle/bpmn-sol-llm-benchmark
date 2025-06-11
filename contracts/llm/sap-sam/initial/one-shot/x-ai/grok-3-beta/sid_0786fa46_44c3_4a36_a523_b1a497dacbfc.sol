// test x-ai/grok-3-beta - one-shot at 2025-06-11T18:40:34.104Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_0786fa46_44c3_4a36_a523_b1a497dacbfc {
    uint public tokenState = 1; // Start with the StartEvent active
    address[18] public participants;
    uint public conditions;

    constructor(address[18] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event to first task
            if (_tokenState & 1 == 1) {
                // Start Event (sid-CCE7DBB8-F687-49D8-93E2-21EE180934B4)
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate first task (sid-B2637F90-7C26-4326-A98B-CC7716F057B5)
                continue;
            }

            // Task 1: eroeffnet Konferenz und laedt Gutachter ein
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // PC-Chair
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Parallel Gateway Diverging (sid-C5DE8EF7-9798-4AE9-8C6F-F97573ABD19C)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Diverging (sid-C5DE8EF7-9798-4AE9-8C6F-F97573ABD19C)
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Activate Task 2 (sid-2B84B913-C24A-4900-827A-67D2E24D1B60)
                _tokenState |= 16; // Activate Task 3 (sid-92E7E7B5-33E5-4A91-9475-46F467DE7B9E)
                continue;
            }

            // Task 2: Interessen eintragen
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[3]) { // Gutachter
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate Parallel Gateway Converging part (sid-66BC2340-5047-444C-AF54-3C8AAC6A6261)
                    id = 0;
                    continue;
                }
            }

            // Task 3: veroeffentlicht CfP
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[5]) { // PC-Chair
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate Task 4 (sid-8DC72FFD-BFE4-4C29-9988-E2F6AD7AF422)
                    id = 0;
                    continue;
                }
            }

            // Task 4: reicht Paper ein
            if (_tokenState & 64 == 64) {
                if (4 == id && msg.sender == participants[8]) { // Autor
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Parallel Gateway Converging part (sid-66BC2340-5047-444C-AF54-3C8AAC6A6261)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Converging (sid-66BC2340-5047-444C-AF54-3C8AAC6A6261)
            if (_tokenState & 160 == 160) { // Both incoming paths (32 + 128)
                _tokenState &= ~uint(160);
                _tokenState |= 256; // Activate Task 5 (sid-4219A247-23E0-4712-9F1E-F40D9B45BF28)
                continue;
            }

            // Task 5: teilt Paper den Gutachtern zu und fordert zur fristgerechten Abgabe auf
            if (_tokenState & 256 == 256) {
                if (5 == id && msg.sender == participants[10]) { // System
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate Task 6 (sid-2B8EAFC8-D911-4339-8879-A880BD1D028D)
                    id = 0;
                    continue;
                }
            }

            // Task 6: begutachtet Paper und traegt Ergebnis ein
            if (_tokenState & 512 == 512) {
                if (6 == id && msg.sender == participants[12]) { // Gutachter
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate Task 7 (sid-012F2B4A-D805-45FF-A552-E363B0211104)
                    id = 0;
                    continue;
                }
            }

            // Task 7: entscheidet ueber Annahme
            if (_tokenState & 1024 == 1024) {
                if (7 == id && msg.sender == participants[14]) { // PC-Chair
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Activate Task 8 (sid-44BD4E07-0F32-4C6A-94CD-C611847E6F84)
                    id = 0;
                    continue;
                }
            }

            // Task 8: benachrichtigt ueber Annahme/Ablehnung
            if (_tokenState & 2048 == 2048) {
                if (8 == id && msg.sender == participants[16]) { // System
                    _tokenState &= ~uint(2048);
                    _tokenState = 0; // End of process
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}