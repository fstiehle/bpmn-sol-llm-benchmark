// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:05:30.279Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_8ed001c7_2c3a_442f_b77a_96af0aa2ae3c {
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
                // Start Event to Task 1 (anfrage stellen)
                // Auto transition from Start Event
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Task 1: sid-BC676960-23F9-4F7B-9EA9-EFD75EF13174 (anfrage stellen)
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Task 2
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 2: sid-83B3553F-084D-4DB3-AE67-CDA14502E47B (Angebot vorlegen)
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Gateway: sid-1F6F2DA4-DC5B-4C6E-97D5-7A930E813EC0 (Exclusive Gateway)
                // Auto transition based on conditions (since no conditions are specified, we assume a default path or external condition setting)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Task 3 (angebot annehmen)
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate Task 4 (angebot ablehnen)
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 3: sid-FD9325D9-C67E-4CEB-A961-7D37B3FD6822 (angebot annehmen)
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate Task 5
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Task 4: sid-294C7BB5-AE35-45CD-88C4-BEEC829E3391 (angebot ablehnen)
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(32);
                    _tokenState |= 0; // End process
                    break; // Process ends
                }
            }
            if (_tokenState & 64 == 64) {
                // Task 5: sid-BAD12DD8-61E5-43CE-AF0A-15F217994338 (Verfuegbarkeit pruefen)
                if (5 == id && msg.sender == participants[8]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Task 6
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Task 6: sid-0A67D3C3-2A37-4E8C-B339-B9FB95D1E7D3 (kaffebohnen bestellen)
                if (6 == id && msg.sender == participants[10]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Task 7
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Task 7: sid-AEE98631-784A-44AE-B5FB-9AA162840E22 (kaffebohnen an gmbh schicken)
                if (7 == id && msg.sender == participants[12]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // End process
                    break; // Process ends
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}