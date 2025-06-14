// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:36:49.312Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_17854d3c_f32e_48b0_ad92_84fdf99d92f7 {
    uint public tokenState = 1; // Start event active
    address[20] public participants;
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event to initial task via gateway
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-90E1E0CC-4697-4AF5-98CB-B0DDA7792ED4 (taskID 2)
                continue;
            }

            // sid-90E1E0CC-4697-4AF5-98CB-B0DDA7792ED4 "Wohnung" (taskID 2)
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-47422B2D-5D26-41DB-B127-0615FC7D32FD (taskID 3)
                    id = 0;
                    continue;
                }
            }

            // sid-47422B2D-5D26-41DB-B127-0615FC7D32FD "Gesprach" (taskID 3)
            if (_tokenState & 4 == 4) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-E4488B23-225F-450A-A883-49E9EB7FD866 (taskID 6)
                    id = 0;
                    continue;
                }
            }

            // sid-E4488B23-225F-450A-A883-49E9EB7FD866 "Besichtigung" (taskID 6)
            if (_tokenState & 8 == 8) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate gateway sid-93FF4FC7-EBE9-4C07-94D0-AAC8765CB259
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-93FF4FC7-EBE9-4C07-94D0-AAC8765CB259 (exclusive diverging)
            if (_tokenState & 16 == 16) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate sid-4398A998-AB97-4E2E-82AE-44E22B35EC42 (taskID 5)
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate sid-A8A5AA32-6339-48DB-A399-FE69B576C63A (taskID 4, default)
                }
                continue;
            }

            // sid-A8A5AA32-6339-48DB-A399-FE69B576C63A "Wohnung abgelehnt" (taskID 4)
            if (_tokenState & 64 == 64) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate gateway sid-6090D503-E4DA-47F0-94DB-DBDC23DF6AD1
                    id = 0;
                    continue;
                }
            }

            // sid-4398A998-AB97-4E2E-82AE-44E22B35EC42 "Wohnung angenommen" (taskID 5)
            if (_tokenState & 32 == 32) {
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // Activate sid-F278FFA9-D781-428C-9061-460B36BB8DC8 (taskID 1)
                    id = 0;
                    continue;
                }
            }

            // sid-F278FFA9-D781-428C-9061-460B36BB8DC8 "Kredit" (taskID 1)
            if (_tokenState & 256 == 256) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate gateway sid-111BD5DA-2DDD-48DB-9352-EB21C708A036
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-111BD5DA-2DDD-48DB-9352-EB21C708A036 (exclusive diverging)
            if (_tokenState & 512 == 512) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate sid-905ABD45-2BED-4426-84B1-6A5AA93CCBF1 (taskID 7)
                } else {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048; // Activate sid-5831EEC3-4682-46D2-A619-5E6920AE6F1F (taskID 10, default)
                }
                continue;
            }

            // sid-905ABD45-2BED-4426-84B1-6A5AA93CCBF1 "Kredit geben" (taskID 7)
            if (_tokenState & 1024 == 1024) {
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096; // Activate sid-93BAFAD4-8005-4C6C-8D2E-0717C32C60D7 (taskID 8)
                    id = 0;
                    continue;
                }
            }

            // sid-93BAFAD4-8005-4C6C-8D2E-0717C32C60D7 "Unterschreiben des Vertrags" (taskID 8)
            if (_tokenState & 4096 == 4096) {
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192; // Activate sid-EE223F01-9025-4791-8371-FA708DA6D6AF (taskID 9)
                    id = 0;
                    continue;
                }
            }

            // sid-EE223F01-9025-4791-8371-FA708DA6D6AF "Eintragung" (taskID 9)
            if (_tokenState & 8192 == 8192) {
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 0; // End event, terminate
                    break; // Process ends
                }
            }

            // sid-5831EEC3-4682-46D2-A619-5E6920AE6F1F "Kein Kredit" (taskID 10)
            if (_tokenState & 2048 == 2048) {
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // End event, terminate
                    break; // Process ends
                }
            }

            // Gateway sid-6090D503-E4DA-47F0-94DB-DBDC23DF6AD1 (exclusive converging)
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                _tokenState |= 2; // Activate sid-90E1E0CC-4697-4AF5-98CB-B0DDA7792ED4 (taskID 2)
                continue;
            }

            break;
        }
        tokenState = _tokenState;
    }
}