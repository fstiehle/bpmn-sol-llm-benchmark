// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:03:24.641Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_848b09bf_d759_44bc_8a4b_954dff55e26c {
    uint public tokenState = 1; // Start with the start event active
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event transitions to Task 1 (Anruf)
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Task 1: Anruf (sid-29382691-CB62-40F3-A6A9-5C643BCD67F4)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 2: Prolem am Telefon loesen (sid-482ECE6A-6926-4174-B9E2-1C7B992D32EC)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Exclusive Gateway (sid-B14BB365-4055-4E22-B49D-C6ACF85300DC)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Path to Task 4
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Default path to Task 3
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 4: Problem wurde nicht geloesst (sid-E7B112CB-896D-4159-9464-B74D47DE6861)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Task 3: Prolem wurde geloesst (sid-737C1F68-8E64-44F6-9DA9-87F49EC235AB)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0; // End event
                    break;
                }
            }
            if (_tokenState & 64 == 64) {
                // Task 5: Prolem weitergeben (sid-2D85381C-5785-40E1-95C2-8726B0E2869E)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Task 6: Kunden besuchen (sid-20BC5888-EE78-45CF-9853-A0957742FEC2)
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Task 7: Prolem loesen (sid-164C0FA3-1643-4A7A-9EA0-13E3D9F745B9)
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // Task 8: Formular unterschreiben (sid-48480116-350F-44A4-B921-AA30302FA5E0)
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // End event
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}