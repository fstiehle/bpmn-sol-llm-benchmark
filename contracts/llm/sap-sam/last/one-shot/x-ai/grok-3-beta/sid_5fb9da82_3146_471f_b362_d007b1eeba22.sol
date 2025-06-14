// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:54:48.004Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_5fb9da82_3146_471f_b362_d007b1eeba22 {
    uint public tokenState = 1; // Start at the beginning (startEvent)
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
            // Task 1: Termin ausmachen (sid-7022C348-D09E-4F95-B819-26BB3F9BDA77)
            if (_tokenState & 1 == 1) {
                if (taskID == 1 && msg.sender == participants[0]) { // Initiating participant: Kunde
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    taskID = 0;
                    continue;
                }
            }

            // Task 2: Termin und Ort verifizieren (sid-B7F015A5-D636-416D-9257-A87971F74589)
            if (_tokenState & 2 == 2) {
                if (taskID == 2 && msg.sender == participants[2]) { // Initiating participant: Fotostudio
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to next task
                    taskID = 0;
                    continue;
                }
            }

            // Task 3: Fotoauswahl (sid-73A19B14-D898-44EF-928B-79832C150CC9)
            if (_tokenState & 4 == 4) {
                if (taskID == 3 && msg.sender == participants[4]) { // Initiating participant: Fotostudio
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to next task
                    taskID = 0;
                    continue;
                }
            }

            // Task 4: Fotos festlegen und Sonderwunsche (sid-263E55DE-655C-4354-9267-B923AB819ADA)
            if (_tokenState & 8 == 8) {
                if (taskID == 4 && msg.sender == participants[6]) { // Initiating participant: Kunde
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to next task
                    taskID = 0;
                    continue;
                }
            }

            // Task 5: Rechnung austellen (sid-7FD2DF6B-AA9B-4DB9-8A4A-BB8B78D10B0E)
            if (_tokenState & 16 == 16) {
                if (taskID == 5 && msg.sender == participants[8]) { // Initiating participant: Fotostudio
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to next task
                    taskID = 0;
                    continue;
                }
            }

            // Task 6: Fotos bezahlen (sid-2BA251C1-F838-4861-B938-22F4BE0320B2)
            if (_tokenState & 32 == 32) {
                if (taskID == 6 && msg.sender == participants[10]) { // Initiating participant: Kunde
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to exclusive gateway
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway (Diverging): sid-0F477053-E408-4EC6-956C-FC3E8CCA0EF7
            if (_tokenState & 64 == 64) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Path to Fotos geschickt bekommen (Task 8)
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Default path to Fotos abholen (Task 7)
                    continue;
                }
            }

            // Task 7: Fotos abholen (sid-DB65A7A4-7642-48A2-8798-44DC7F968623)
            if (_tokenState & 128 == 128) {
                if (taskID == 7 && msg.sender == participants[12]) { // Initiating participant: Kunde
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Move to converging gateway
                    taskID = 0;
                    continue;
                }
            }

            // Task 8: Fotos geschickt bekommen (sid-D0AC8191-ECED-4E83-ACF3-28B83E1C53E2)
            if (_tokenState & 256 == 256) {
                if (taskID == 8 && msg.sender == participants[14]) { // Initiating participant: Fotostudio
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to converging gateway
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway (Converging): sid-B15530BB-F5EE-4B75-8886-2C8A7BFF05F6
            if (_tokenState & 512 == 512) {
                _tokenState &= ~uint(512);
                _tokenState = 0; // End of process
                break;
            }

            break; // Exit loop if no conditions matched
        }
        tokenState = _tokenState;
    }
}