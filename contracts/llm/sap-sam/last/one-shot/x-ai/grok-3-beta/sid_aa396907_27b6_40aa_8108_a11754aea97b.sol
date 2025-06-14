// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:14:09.058Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_aa396907_27b6_40aa_8108_a11754aea97b {
    uint public tokenState = 1; // Start with the StartEvent active
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
            // StartEvent (sid-B605F3A4-A6CE-450A-95F9-F5BB659E19E5)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate task 1 (sid-5D37CC23-426B-4F2E-8782-083054937AC4)
                continue;
            }

            // Task 1: slanje problema (sid-5D37CC23-426B-4F2E-8782-083054937AC4)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate task 2 (sid-564CE9B7-7424-442C-BFEC-D117D25F229A)
                    id = 0;
                    continue;
                }
            }

            // Task 2: dobijanje detaljnog opisa (sid-564CE9B7-7424-442C-BFEC-D117D25F229A)
            if (_tokenState & 4 == 4) {
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate gateway (sid-4E49CB66-5CF5-4962-A149-7FD9E55A8F0E)
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway: operater zna da resi? (sid-4E49CB66-5CF5-4962-A149-7FD9E55A8F0E)
            if (_tokenState & 8 == 8) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate task 3 (sid-664F8FC2-4AAE-43F8-91F8-4567524590BA)
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate task 4 (sid-A3FBF911-AE8D-4C25-A14C-27F8EDEC3915, default path)
                }
                continue;
            }

            // Task 3: slanje resenja (sid-664F8FC2-4AAE-43F8-91F8-4567524590BA)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // End event (sid-B26CD76C-8081-4EB9-9C13-A41AAFB289F6)
                    break; // Process termination
                }
            }

            // Task 4: trazenje resenja (sid-A3FBF911-AE8D-4C25-A14C-27F8EDEC3915)
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate gateway (sid-950997B7-A897-4011-841F-128DF26B6871)
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway: podrska I nivoa zna da resi (sid-950997B7-A897-4011-841F-128DF26B6871)
            if (_tokenState & 64 == 64) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate task 6 (sid-8BF7FEB7-F264-48B3-80BB-075108F3D6D1)
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Activate task 5 (sid-D9B2FF79-A8A5-4E10-A866-B810A62171C8, default path)
                }
                continue;
            }

            // Task 6: trazenje resenja (sid-8BF7FEB7-F264-48B3-80BB-075108F3D6D1)
            if (_tokenState & 128 == 128) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Activate task 7 (sid-AE5C4B6F-9132-4CAA-B63C-8C09457134A3)
                    id = 0;
                    continue;
                }
            }

            // Task 7: slanje resenja (sid-AE5C4B6F-9132-4CAA-B63C-8C09457134A3)
            if (_tokenState & 512 == 512) {
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 256; // Activate task 5 (sid-D9B2FF79-A8A5-4E10-A866-B810A62171C8)
                    id = 0;
                    continue;
                }
            }

            // Task 5: salje resnje (sid-D9B2FF79-A8A5-4E10-A866-B810A62171C8)
            if (_tokenState & 256 == 256) {
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 16; // Activate task 3 (sid-664F8FC2-4AAE-43F8-91F8-4567524590BA)
                    id = 0;
                    continue;
                }
            }

            break; // Exit loop if no further transitions are possible
        }
        tokenState = _tokenState;
    }
}