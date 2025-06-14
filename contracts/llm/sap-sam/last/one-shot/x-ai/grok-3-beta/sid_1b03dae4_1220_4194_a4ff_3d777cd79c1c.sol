// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:37:59.598Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_1b03dae4_1220_4194_a4ff_3d777cd79c1c {
    uint public tokenState = 1; // Start event active
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
            // Start Event to Task M1
            if (_tokenState & 1 == 1) {
                // Auto transition from Start Event to Task M1
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task M1
                continue;
            }

            // Task M1 (sid-A7638941-30FE-45AC-A612-C227C72D5F76)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // Initiating participant A
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Parallel Gateway (Diverging)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Diverging (sid-00E07E95-7526-4B8C-BACC-C00BBAB4E570)
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 8;  // Activate Task M4 path
                _tokenState |= 16; // Activate Task M2 path
                continue;
            }

            // Task M4 (sid-1071CFC9-F879-43FC-9065-70097B82BD19)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) { // Initiating participant B
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate part of Parallel Gateway (Converging)
                    id = 0;
                    continue;
                }
            }

            // Task M2 (sid-C2405B42-3A6C-4E8E-BA4C-BFD35BA4F9FF)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) { // Initiating participant B
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate Task M3
                    id = 0;
                    continue;
                }
            }

            // Task M3 (sid-116E070A-B0D8-4BCD-B082-AE9D3968F94E)
            if (_tokenState & 64 == 64) {
                if (4 == id && msg.sender == participants[6]) { // Initiating participant C
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate other part of Parallel Gateway (Converging)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Converging (sid-95EDDF96-752C-4BC2-AB18-629BE80CE91F)
            if (_tokenState & 32 == 32 && _tokenState & 128 == 128) {
                _tokenState &= ~uint(32);
                _tokenState &= ~uint(128);
                _tokenState |= 256; // Activate Task M5
                continue;
            }

            // Task M5 (sid-6FFFC22F-E9A9-41C4-BA64-65C72CF1EE31)
            if (_tokenState & 256 == 256) {
                if (5 == id && msg.sender == participants[8]) { // Initiating participant B
                    _tokenState &= ~uint(256);
                    _tokenState = 0; // End event, terminate process
                    break;
                }
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}