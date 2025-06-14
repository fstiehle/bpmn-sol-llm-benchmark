// test openai/gpt-4.1 - one-shot at 2025-06-12T00:01:47.385Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_a00b0462_4ff5_4e14_9207_23ebd44452ef {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // ChoreographyTask 1: sid-AD74E23D-6D70-4941-9114-C2A9AE812386 (Slanje problema)
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) {
                    // [custom code for task 1 here]
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // ChoreographyTask 2: sid-98FBCA10-0820-49F0-BCE5-73950F33DF03 (Dobijanje detaljnog opisa problema)
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[3]) {
                    // [custom code for task 2 here]
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // Gateway sid-C273D194-D370-491D-9CA0-F84A6E9637A6: Operater zna da resi?
            if (_tokenState & 4 == 4) {
                bool matched = false;
                // SequenceFlow sid-3B192F94-8D3A-4601-A40B-1B1507ACF1E3: conditions & 1 == 1
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    matched = true;
                    continue;
                }
                // Default to sid-476A8791-28A4-4B75-B40F-9C5ECC94FEE9
                if (!matched) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            // ChoreographyTask 3: sid-0174419F-56DC-4BDD-90B4-FED8789180E4 (Slanje resenja)
            if (_tokenState & 8 == 8) {
                if (3 == id && msg.sender == participants[5]) {
                    // [custom code for task 3 here]
                    _tokenState &= ~uint(8);
                    // End event (sid-0F1BE467-472F-4290-8361-B68702E997D7)
                    _tokenState = 0;
                    break;
                }
            }
            // ChoreographyTask 4: sid-4DC770E3-8BE9-487F-BA09-20DA760F80FD (Trazenje resenja)
            if (_tokenState & 16 == 16) {
                if (4 == id && msg.sender == participants[6]) {
                    // [custom code for task 4 here]
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // Gateway sid-3CCCEE02-9108-4DCE-BC15-A8FB13958202: Podrska I nivoa zna da resi?
            if (_tokenState & 32 == 32) {
                bool matched = false;
                // SequenceFlow sid-DFB3DF50-F2B3-4CAA-B65E-397DB8254DCD: conditions & 2 == 2
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    matched = true;
                    continue;
                }
                // Default to sid-114086AE-69BD-40EC-B3E5-E23773C9C7D0
                if (!matched) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }
            // ChoreographyTask 5: sid-57C02DC5-E10C-4152-8DA3-6CC6B2365315 (Slanje resenja)
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[9]) {
                    // [custom code for task 5 here]
                    _tokenState &= ~uint(64);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            // ChoreographyTask 6: sid-A608F0E5-61C5-4C6B-95BD-3B764B7F6D1C (Trazenje resenja)
            if (_tokenState & 128 == 128) {
                if (6 == id && msg.sender == participants[10]) {
                    // [custom code for task 6 here]
                    _tokenState &= ~uint(128);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}