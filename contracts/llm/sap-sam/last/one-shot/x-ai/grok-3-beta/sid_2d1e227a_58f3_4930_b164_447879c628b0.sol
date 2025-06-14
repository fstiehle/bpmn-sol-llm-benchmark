// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:43:41.270Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_2d1e227a_58f3_4930_b164_447879c628b0 {
    uint public tokenState = 1; // Start with the start event active
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event to Task 1 (Kundenanruf)
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Task 1: Kundenanruf (sid-5343FBBE-1949-4189-834C-AF7944006D10)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway (sid-6B3AA898-9DAB-467A-BC1C-05B31EAB24B8)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Task 2 (Lösung erklären)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default path to Task 3 (Problem weitergeben)
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task 2: Lösung erklären (sid-0DA543ED-E104-44FD-828B-4D8D3F76BA93)
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End event (process terminates)
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 3: Problem weitergeben (sid-D1D080CD-56C8-404E-BC5B-10F44648B5C8)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate Task 4
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Task 4: Service-Techniker anrufen (sid-6E64DF59-42FE-4D07-B24B-39C00BAA57CF)
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate Task 5
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Task 5: Zu Kunde fahren (sid-2ABDB270-FA4E-4B15-A8A2-DAC816309C9C)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Task 6
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Task 6: Problem lösen (sid-7A508341-210E-493A-8EC3-B0E2D57D81F2)
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Task 7
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Task 7: Formular unterschreiben lassen (sid-F69420E0-7365-4D69-9A71-ADB0BF7BC50D)
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // End event (process terminates)
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}