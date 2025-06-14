// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:03:32.558Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_851063b9_154a_464d_b0b2_3807e7b88a30 {
    uint public tokenState = 1; // Start event is active initially
    address[4] public participants;
    uint public conditions;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event auto transition to event-based gateway
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate event-based gateway
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Event-based gateway (sid-7B36D673-5B79-45DE-A171-D780235447B1)
                // This is an exclusive gateway, paths are chosen based on participant action
                _tokenState &= ~uint(2);
                if (id == 1) {
                    _tokenState |= 4; // Activate Task 1 (sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA)
                } else if (id == 2) {
                    _tokenState |= 8; // Activate Task 2 (sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2)
                }
                continue;
            }
            if (_tokenState & 4 == 4) {
                // Choreography Task 1 (sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to end event
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Choreography Task 2 (sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to end event
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // End event (sid-ACC06B91-0464-44A3-96F7-C352EB41B892)
                _tokenState &= ~uint(16);
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}