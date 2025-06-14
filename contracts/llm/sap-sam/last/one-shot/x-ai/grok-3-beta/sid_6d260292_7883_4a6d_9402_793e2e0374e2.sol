// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:58:16.449Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_6d260292_7883_4a6d_9402_793e2e0374e2 {
    uint public tokenState = 1; // Start event active
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start event to gateway
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate exclusive gateway
                continue;
            }

            // Exclusive Gateway (sid-3545C612-6034-40CD-A74D-6904D0B9A32F)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 8; // Path to T3
                } else {
                    _tokenState |= 4; // Default path to T1
                }
                continue;
            }

            // Choreography Task T1 (sid-23AC13FC-2149-455A-B3BD-0AAE42B65E19)
            if (_tokenState & 4 == 4) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Transition to T2
                    id = 0;
                    continue;
                }
            }

            // Choreography Task T2 (sid-7F1513B0-C957-4B85-B9F9-B8E3A4247123)
            if (_tokenState & 16 == 16) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Transition to End Event (branch 1)
                    id = 0;
                    continue;
                }
            }

            // Choreography Task T3 (sid-B1284174-413A-49C0-9CB0-12564D20E00F)
            if (_tokenState & 8 == 8) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Transition to T4
                    id = 0;
                    continue;
                }
            }

            // Choreography Task T4 (sid-39C5F9D9-295C-4FA1-91CB-3AB98F3EBD94)
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Transition to End Event (branch 2)
                    id = 0;
                    continue;
                }
            }

            // End Event (sid-747562B0-CDDE-401F-AC43-92155DAE5413)
            // Check if both branches are complete (bit 64 and 128)
            if (_tokenState & 64 == 64 && _tokenState & 128 == 128) {
                _tokenState = 0; // Process complete
                break;
            } else if (_tokenState & 64 == 64 || _tokenState & 128 == 128) {
                // If only one branch is complete, keep the state until the other branch completes
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}