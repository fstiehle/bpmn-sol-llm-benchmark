// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:48:02.629Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_3e07c84d_0ca6_4b3f_9118_1e9edc4f027c {
    uint public tokenState = 1; // Start event active
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
            // Start Event to Task 1 (Slanje problema)
            if (_tokenState & 1 == 1) {
                // sid-1EEA8E35-38D9-4FA1-AD89-1380EF74F425 - Slanje problema
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // Task 1 to Task 2 (Dobijanje detaljnog opisa)
            if (_tokenState & 2 == 2) {
                // sid-7DA2D550-BF2F-4BE1-A17F-72BEFA131839 - Dobijanje detaljnog opisa
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway: Operater zna da resi?
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Task 4 (Trazenje resenja)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default path to Task 3 (Slanje resenja)
                    continue;
                }
            }

            // Task 4 (Trazenje resenja)
            if (_tokenState & 8 == 8) {
                // sid-0C6B5BE7-D2C2-48E8-94C3-DE5D1AA9CDFD - Trazenje resenja
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to next gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway: Podrska I nivoa zna da resi
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Task 5 (Slanje resenja)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Default path to Task 6 (Trazenje resenja)
                    continue;
                }
            }

            // Task 6 (Trazenje resenja)
            if (_tokenState & 128 == 128) {
                // sid-2C0C7772-B797-4324-8FB6-4D73E6242CB4 - Trazenje resenja
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to Task 7
                    id = 0;
                    continue;
                }
            }

            // Task 7 (Slanje resenja)
            if (_tokenState & 256 == 256) {
                // sid-C7F2CE33-2A7A-4B81-BF90-98D5373BC5B5 - Slanje resenja
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to Task 5
                    id = 0;
                    continue;
                }
            }

            // Task 5 (Slanje resenja)
            if (_tokenState & 512 == 512) {
                // sid-61410FD0-64FC-4D89-BBAF-C6EDE6861197 - Slanje resenja
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 16; // Move to Task 3
                    id = 0;
                    continue;
                }
            }

            // Task 3 (Slanje resenja)
            if (_tokenState & 16 == 16) {
                // sid-77FF34A1-BFC9-406C-B7BC-C8DD53FB2187 - Slanje resenja
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // End of process
                    break; // Terminate
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}