// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:35:24.863Z
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

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent (sid-CCE7DBB8-F687-49D8-93E2-21EE180934B4) - Bit 1
            if (_tokenState & 1 == 1) {
                // Auto transition to Task 1
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1
                continue;
            }

            // Task 1: eroeffnet Konferenz und laedt Gutachter ein (sid-B2637F90-7C26-4326-A98B-CC7716F057B5) - Bit 2
            if (_tokenState & 2 == 2) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Parallel Gateway (Diverging)
                    taskID = 0;
                    continue;
                }
            }

            // Parallel Gateway Diverging (sid-C5DE8EF7-9798-4AE9-8C6F-F97573ABD19C) - Bit 4
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Activate Task 2 (Interessen eintragen)
                _tokenState |= 16; // Activate Task 3 (veroeffentlicht CfP)
                continue;
            }

            // Task 2: Interessen eintragen (sid-2B84B913-C24A-4900-827A-67D2E24D1B60) - Bit 8
            if (_tokenState & 8 == 8) {
                if (taskID == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate part of Parallel Gateway (Converging)
                    taskID = 0;
                    continue;
                }
            }

            // Task 3: veroeffentlicht CfP (sid-92E7E7B5-33E5-4A91-9475-46F467DE7B9E) - Bit 16
            if (_tokenState & 16 == 16) {
                if (taskID == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate Task 4 (reicht Paper ein)
                    taskID = 0;
                    continue;
                }
            }

            // Task 4: reicht Paper ein (sid-8DC72FFD-BFE4-4C29-9988-E2F6AD7AF422) - Bit 64
            if (_tokenState & 64 == 64) {
                if (taskID == 4 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate part of Parallel Gateway (Converging)
                    taskID = 0;
                    continue;
                }
            }

            // Parallel Gateway Converging (sid-66BC2340-5047-444C-AF54-3C8AAC6A6261) - Bit 32 (Task 2) + Bit 128 (Task 4)
            if (_tokenState & 32 == 32 && _tokenState & 128 == 128) {
                _tokenState &= ~uint(32);
                _tokenState &= ~uint(128);
                _tokenState |= 256; // Activate Task 5
                continue;
            }

            // Task 5: teilt Paper den Gutachtern zu und fordert zur fristgerechten Abgabe auf (sid-4219A247-23E0-4712-9F1E-F40D9B45BF28) - Bit 256
            if (_tokenState & 256 == 256) {
                if (taskID == 5 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate Task 6
                    taskID = 0;
                    continue;
                }
            }

            // Task 6: begutachtet Paper und traegt Ergebnis ein (sid-2B8EAFC8-D911-4339-8879-A880BD1D028D) - Bit 512
            if (_tokenState & 512 == 512) {
                if (taskID == 6 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate Task 7
                    taskID = 0;
                    continue;
                }
            }

            // Task 7: entscheidet ueber Annahme (sid-012F2B4A-D805-45FF-A552-E363B0211104) - Bit 1024
            if (_tokenState & 1024 == 1024) {
                if (taskID == 7 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Activate Task 8
                    taskID = 0;
                    continue;
                }
            }

            // Task 8: benachrichtigt ueber Annahme/Ablehnung (sid-44BD4E07-0F32-4C6A-94CD-C611847E6F84) - Bit 2048
            if (_tokenState & 2048 == 2048) {
                if (taskID == 8 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096; // Activate EndEvent
                    taskID = 0;
                    continue;
                }
            }

            // EndEvent (sid-DBA255AE-ECAF-4C3F-9AD1-D956E8B3A517) - Bit 4096
            if (_tokenState & 4096 == 4096) {
                _tokenState = 0; // Terminate the process
                break;
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}