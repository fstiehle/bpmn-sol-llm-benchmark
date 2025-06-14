// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:52:28.506Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_529fb700_2c71_4e92_ade0_78e677ee2f52 {
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
            if (_tokenState & 1 == 1) {
                // StartEvent -> Task 1
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Task 1: sid-1C226C51-E363-4826-BA85-0F703F531C64 (Klijent ima problem)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Task 2
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 2: sid-B693B53E-A351-4847-9941-52BDE15E747B (Dobijanje detaljnog opisa problema)
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Gateway sid-1C2370B0-501F-4799-83F5-78D162E545B5
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Gateway sid-1C2370B0-501F-4799-83F5-78D162E545B5 (znam resenje?)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 128; // Move to Converging Gateway sid-3B49A9B1-F4C6-4810-8F92-A811492852DF
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Default: Move to Task 3
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 3: sid-F7291B89-FE8B-473D-B610-791411865F5E (Trazenje pomoci)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Gateway sid-21B65A39-B522-4F89-B698-599A8167A05C
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Gateway sid-21B65A39-B522-4F89-B698-599A8167A05C (zna resenje?)
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Converging Gateway sid-B5123D57-0CDB-4221-8EB8-829F4DF29438
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // Default: Move to Task 4
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Task 4: sid-7413834A-8E39-4E40-85A2-38B4562914F7 (Trazenje pomoci)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to Task 5
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // Task 5: sid-9C89324C-4B6B-46F0-876E-F192CA444D22 (Resavanje problema)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 64; // Move to Converging Gateway sid-B5123D57-0CDB-4221-8EB8-829F4DF29438
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Converging Gateway sid-B5123D57-0CDB-4221-8EB8-829F4DF29438
                _tokenState &= ~uint(64);
                _tokenState |= 1024; // Move to Task 6
                continue;
            }
            if (_tokenState & 1024 == 1024) {
                // Task 6: sid-46DD2450-9E9B-445D-814D-C554364C7F81 (Resavanje problema)
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 128; // Move to Converging Gateway sid-3B49A9B1-F4C6-4810-8F92-A811492852DF
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Converging Gateway sid-3B49A9B1-F4C6-4810-8F92-A811492852DF
                _tokenState &= ~uint(128);
                _tokenState |= 2048; // Move to Task 7
                continue;
            }
            if (_tokenState & 2048 == 2048) {
                // Task 7: sid-A23868C2-A1D7-4BBA-A3EE-D9A6EC69A0DD (Resavanje problema)
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(2048);
                    _tokenState = 0; // End event, terminate process
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}