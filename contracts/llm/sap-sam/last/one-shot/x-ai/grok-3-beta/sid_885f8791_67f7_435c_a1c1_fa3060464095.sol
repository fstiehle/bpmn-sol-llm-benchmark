// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:04:20.294Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_885f8791_67f7_435c_a1c1_fa3060464095 {
    uint public tokenState = 1; // Start with the initial state for the start event
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
                // Task 1: Slanje problema (sid-21C2A13B-9856-4CDC-BC31-34E7F073E8D1)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to Task 2
                    id = 0;
                    continue;
                }
            }

            // Task 2: Dobijanje detaljnog opisa (sid-24F4EDD0-56DB-45C9-87A2-315B19CABB82)
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Gateway 1 (sid-DF5234BE-0D11-41B5-BBE4-7CDAD318FCCD)
                    id = 0;
                    continue;
                }
            }

            // Gateway 1: Operater zna da resi? (sid-DF5234BE-0D11-41B5-BBE4-7CDAD318FCCD)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to Task 4 (Trazenje resenja)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Default path to Task 3 (Slanje resenja)
                    continue;
                }
            }

            // Task 3: Slanje resenja (sid-87EECDEB-03C2-4616-A431-BCB2CEB167CB)
            if (_tokenState & 8 == 8) {
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End event, process terminates
                    break; // End process
                }
            }

            // Task 4: Trazenje resenja (sid-D5882BC3-50C0-45B2-8D82-355592957A2E)
            if (_tokenState & 16 == 16) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Gateway 2 (sid-AC83CCB8-91BB-415D-BDF2-A3930AD4CEE2)
                    id = 0;
                    continue;
                }
            }

            // Gateway 2: Podrska I nivoa zna da resi (sid-AC83CCB8-91BB-415D-BDF2-A3930AD4CEE2)
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Move to Task 6 (Trazenje resenja)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Default path to Task 5 (Slanje resenja)
                    continue;
                }
            }

            // Task 5: Slanje resenja (sid-199F4922-5E06-4997-BC33-ECAD360D3C23)
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 8; // Move back to Task 3 (Slanje resenja)
                    id = 0;
                    continue;
                }
            }

            // Task 6: Trazenje resenja (sid-58B19BA7-610B-4E56-8B71-D22B9E647FA4)
            if (_tokenState & 128 == 128) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to Task 7 (slanje resenja)
                    id = 0;
                    continue;
                }
            }

            // Task 7: slanje resenja (sid-F5162031-F819-4F09-89B4-31B1696E7694)
            if (_tokenState & 256 == 256) {
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 64; // Move back to Task 5 (Slanje resenja)
                    id = 0;
                    continue;
                }
            }

            break; // Exit loop if no conditions are met
        }
        tokenState = _tokenState;
    }
}