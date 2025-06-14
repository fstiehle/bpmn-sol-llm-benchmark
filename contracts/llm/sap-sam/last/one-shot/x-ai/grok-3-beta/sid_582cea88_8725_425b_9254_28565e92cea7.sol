// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:53:15.346Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_582cea88_8725_425b_9254_28565e92cea7 {
    uint public tokenState = 1; // Start with the start event active
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event (sid-5C632BE8-175D-4986-8EE4-A73901B3EDF8) -> Task 1
            if (_tokenState & 1 == 1) {
                // Auto transition from Start Event to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1 (sid-1A1E8E50-B672-4475-B6FD-5DEA9B1225EC)
                continue;
            }

            // Task 1: send Credit Card Application (sid-1A1E8E50-B672-4475-B6FD-5DEA9B1225EC)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Gateway Applicant suitable? (sid-9D500E37-A113-4014-B70C-F3B21B1F5167)
                    id = 0;
                    continue;
                }
            }

            // Gateway: Applicant suitable? (sid-9D500E37-A113-4014-B70C-F3B21B1F5167)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate converging gateway (sid-87F0D9F7-EA85-4767-B907-3BDD069B1AC8)
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Default path to Task 3 (sid-8FF1ED8F-5296-456F-A095-9C13C881D5D1)
                }
                continue;
            }

            // Task 3: send Credit File request (sid-8FF1ED8F-5296-456F-A095-9C13C881D5D1)
            if (_tokenState & 8 == 8) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate Task 2 (sid-D68AD0BC-AE79-411E-A3E0-5B6EF2DC32E1)
                    id = 0;
                    continue;
                }
            }

            // Task 2: send Credit File (sid-D68AD0BC-AE79-411E-A3E0-5B6EF2DC32E1)
            if (_tokenState & 32 == 32) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate Gateway Credit Card eligible? (sid-C9868726-531B-42B7-ADD1-EBF992BE647C)
                    id = 0;
                    continue;
                }
            }

            // Gateway: Credit Card eligible? (sid-C9868726-531B-42B7-ADD1-EBF992BE647C)
            if (_tokenState & 64 == 64) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 16; // Activate converging gateway (sid-87F0D9F7-EA85-4767-B907-3BDD069B1AC8)
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Default path to Task 5 (sid-2C0F233E-EB17-4C7B-8E3A-02D33BA6BDA2)
                }
                continue;
            }

            // Task 5: send Application Acceptance (sid-2C0F233E-EB17-4C7B-8E3A-02D33BA6BDA2)
            if (_tokenState & 128 == 128) {
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate End Event (sid-9871C64A-5A38-4B9C-AB60-11FFC7993734)
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway (sid-87F0D9F7-EA85-4767-B907-3BDD069B1AC8)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 512; // Activate Task 4 (sid-04D38013-6E3C-4B41-ABB6-7322759E40D7)
                continue;
            }

            // Task 4: send Application rejection (sid-04D38013-6E3C-4B41-ABB6-7322759E40D7)
            if (_tokenState & 512 == 512) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 256; // Activate End Event (sid-9871C64A-5A38-4B9C-AB60-11FFC7993734)
                    id = 0;
                    continue;
                }
            }

            // End Event (sid-9871C64A-5A38-4B9C-AB60-11FFC7993734)
            if (_tokenState & 256 == 256) {
                _tokenState = 0; // Terminate process
                break;
            }

            break; // Exit loop if no conditions are met
        }
        tokenState = _tokenState;
    }
}