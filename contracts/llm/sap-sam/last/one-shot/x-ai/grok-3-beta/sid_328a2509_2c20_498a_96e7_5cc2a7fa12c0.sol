// test x-ai/grok-3-beta - one-shot at 2025-06-14T00:27:05.585Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_328a2509_2c20_498a_96e7_5cc2a7fa12c0 {
    uint public tokenState = 1; // Start with the StartEvent active
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
            // Start Event (sid-FC15200D-EFC8-49F5-A378-85EF47E5DD36)
            if (_tokenState & 1 == 1) {
                // Automatically move to event-based gateway
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Event-Based Gateway (sid-AA462EEC-E354-4613-8331-6A7316716EDF)
                continue;
            }

            // Event-Based Gateway (sid-AA462EEC-E354-4613-8331-6A7316716EDF)
            if (_tokenState & 2 == 2) {
                // This is an exclusive event-based gateway, no conditions to evaluate, tasks are activated based on enactment
                // No immediate transition; tasks are triggered by participant action
                break;
            }

            // Choreography Task 1: sid-4DB685DD-6383-42A3-8D06-0AB4D69F921C (Skasowanie wizyty)
            if (_tokenState & 4 == 4) {
                if (1 == id && msg.sender == participants[0]) {
                    // Task logic can be added here if needed
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Exclusive Gateway (sid-5ECAAC87-4877-474A-A106-1ABD47BAA1EA)
                    id = 0;
                    continue;
                }
            }

            // Choreography Task 3: sid-9A69B876-7737-4E82-9EAF-4023E127749C (Skasowanie wizyty)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[5]) {
                    // Task logic can be added here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 8; // Move to Exclusive Gateway (sid-5ECAAC87-4877-474A-A106-1ABD47BAA1EA)
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway (sid-5ECAAC87-4877-474A-A106-1ABD47BAA1EA)
            if (_tokenState & 8 == 8) {
                // Converging gateway, automatically move to next (default path)
                _tokenState &= ~uint(8);
                _tokenState |= 32; // Activate Parallel Gateway (sid-26AD080D-D2BA-4FFF-A84A-5ED32418E470)
                continue;
            }

            // Parallel Gateway Diverging (sid-26AD080D-D2BA-4FFF-A84A-5ED32418E470)
            if (_tokenState & 32 == 32) {
                // Split: activate both outgoing paths concurrently
                _tokenState &= ~uint(32);
                _tokenState |= 64; // Activate Task 2 (sid-CD8932F0-FA63-4338-B81E-2E2B4D6E149F)
                _tokenState |= 128; // Activate Task 4 (sid-E40BD334-AFF4-43A2-9144-B49F16663E03)
                continue;
            }

            // Choreography Task 2: sid-CD8932F0-FA63-4338-B81E-2E2B4D6E149F (Dokonanie skasowania wizyty)
            if (_tokenState & 64 == 64) {
                if (2 == id && msg.sender == participants[2]) {
                    // Task logic can be added here if needed
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to End Event (sid-8FFD75E0-7F1D-4AB7-90B8-163F66D0AF51)
                    id = 0;
                    continue;
                }
            }

            // Choreography Task 4: sid-E40BD334-AFF4-43A2-9144-B49F16663E03 (Dokonanie skasowania wizyty)
            if (_tokenState & 128 == 128) {
                if (4 == id && msg.sender == participants[7]) {
                    // Task logic can be added here if needed
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to End Event (sid-8FFD75E0-7F1D-4AB7-90B8-163F66D0AF51)
                    id = 0;
                    continue;
                }
            }

            // End Event (sid-8FFD75E0-7F1D-4AB7-90B8-163F66D0AF51)
            if (_tokenState & 256 == 256 && _tokenState & 384 == 0) {
                // Both incoming paths must converge (Tasks 2 and 4 completed)
                _tokenState = 0; // Terminate process
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}