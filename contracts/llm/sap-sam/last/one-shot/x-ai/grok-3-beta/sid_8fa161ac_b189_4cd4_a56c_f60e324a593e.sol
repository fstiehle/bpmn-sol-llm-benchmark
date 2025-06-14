// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:05:54.712Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_8fa161ac_b189_4cd4_a56c_f60e324a593e {
    uint public tokenState = 1; // Start with the initial state (start event)
    address[14] public participants; // Array to store participant addresses
    uint public conditions; // Condition variable for exclusive gateways

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event to Task 1 (sid-DC738A66-7525-4C02-99D0-E48FC804756A)
            if (_tokenState & 1 == 1) {
                // Task 1: slanje problema
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task (sid-34874B10-2120-4641-85D3-7DA5014FE9FD)
                    id = 0;
                    continue;
                }
            }

            // Task 2 (sid-34874B10-2120-4641-85D3-7DA5014FE9FD): opisivanje problema
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway (sid-434BA095-2193-4B16-9326-08C37AF51696)
                    id = 0;
                    continue;
                }
            }

            // Gateway (sid-434BA095-2193-4B16-9326-08C37AF51696): zna da resi problem?
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to converging gateway (sid-2646D70F-DA7D-4716-9A85-445B4BCE7179)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Default path to Task 4 (sid-EB288683-8547-4DA6-BDC0-A1AE5A38734D)
                    continue;
                }
            }

            // Task 4 (sid-EB288683-8547-4DA6-BDC0-A1AE5A38734D): konsultovanje PPN
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to gateway (sid-C89B3DFB-38A4-4171-8A9B-C3629916A230)
                    id = 0;
                    continue;
                }
            }

            // Gateway (sid-C89B3DFB-38A4-4171-8A9B-C3629916A230): zna da resi problem?
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Task 6 (sid-556F6605-D15D-4916-BBF5-006F8307FA38)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Default path to converging gateway (sid-4359BAC5-CC2E-4DCD-894B-42629D9ADBEA)
                    continue;
                }
            }

            // Task 6 (sid-556F6605-D15D-4916-BBF5-006F8307FA38): slanje opisa problema
            if (_tokenState & 64 == 64) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to Task 7 (sid-45AEC8AE-290B-4570-B253-51A903050093)
                    id = 0;
                    continue;
                }
            }

            // Task 7 (sid-45AEC8AE-290B-4570-B253-51A903050093): slanje resenja i objasnjenja
            if (_tokenState & 256 == 256) {
                if (id == 7 && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 128; // Move to converging gateway (sid-4359BAC5-CC2E-4DCD-894B-42629D9ADBEA)
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway (sid-4359BAC5-CC2E-4DCD-894B-42629D9ADBEA)
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                _tokenState |= 512; // Move to Task 5 (sid-598E252E-B2A2-40AA-AB49-CD70F467EF44)
                continue;
            }

            // Task 5 (sid-598E252E-B2A2-40AA-AB49-CD70F467EF44): slanje resenja
            if (_tokenState & 512 == 512) {
                if (id == 5 && msg.sender == participants[9]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 16; // Move to converging gateway (sid-2646D70F-DA7D-4716-9A85-445B4BCE7179)
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway (sid-2646D70F-DA7D-4716-9A85-445B4BCE7179)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 1024; // Move to Task 3 (sid-49E97E55-D6C3-4E09-879F-677795D88F23)
                continue;
            }

            // Task 3 (sid-49E97E55-D6C3-4E09-879F-677795D88F23): slanje resenja
            if (_tokenState & 1024 == 1024) {
                if (id == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(1024);
                    _tokenState = 0; // End of process
                    break;
                }
            }

            break; // Exit loop if no conditions are met
        }
        tokenState = _tokenState;
    }
}