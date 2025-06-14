// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:41:46.026Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_24949f80_f61f_4372_83d5_6a6139f7126e {
    uint public tokenState = 1; // Start with the initial state at StartEvent
    address[14] public participants; // 14 participants as per the mapping
    uint public conditions; // Conditions for exclusive gateways

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Task 1: Anfrage stellen (sid-2A8C519B-FA14-48DA-9551-53685209B7F3)
            if (_tokenState & 1 == 1) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task (Angebot vorlegen)
                    taskID = 0; // Prevent loops
                    continue;
                }
            }

            // Task 2: Angebot vorlegen (sid-17E8C140-858E-4263-8049-98F7DA801390)
            if (_tokenState & 2 == 2) {
                if (taskID == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway (sid-A98A2F83-9C3D-4AC5-ACD1-7878EF55E3E2)
                    taskID = 0;
                    continue;
                }
            }

            // Event-Based Gateway (sid-A98A2F83-9C3D-4AC5-ACD1-7878EF55E3E2)
            if (_tokenState & 4 == 4) {
                // Assuming conditions are set for decision
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Angebot zusagen (sid-CCF831C8-84D6-4DB1-9F15-73E236241023)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to Angebot ablehnen (sid-F80E4543-2ECB-464B-A37D-243945E38A27)
                    continue;
                }
            }

            // Task 3: Angebot ablehnen (sid-F80E4543-2ECB-464B-A37D-243945E38A27)
            if (_tokenState & 16 == 16) {
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // Move to EndEvent (sid-3F459627-8B09-46EE-B7A1-3BAEBBD9AD9D)
                    break; // Process ends
                }
            }

            // Task 4: Angebot zusagen (sid-CCF831C8-84D6-4DB1-9F15-73E236241023)
            if (_tokenState & 8 == 8) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to Verfuegbarkeit pruefen (sid-A78896B1-BFDB-4C77-88EC-A87A9D33CE54)
                    taskID = 0;
                    continue;
                }
            }

            // Task 5: Verfuegbarkeit pruefen (sid-A78896B1-BFDB-4C77-88EC-A87A9D33CE54)
            if (_tokenState & 32 == 32) {
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Kaffeebohnen bestellen (sid-193B1B0A-E12A-4687-AF7E-387F711B4BCA)
                    taskID = 0;
                    continue;
                }
            }

            // Task 6: Kaffeebohnen bestellen (sid-193B1B0A-E12A-4687-AF7E-387F711B4BCA)
            if (_tokenState & 64 == 64) {
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to Kaffeebohnen liefern (sid-321D60EE-2226-4B45-91C2-440C52F3C3BA)
                    taskID = 0;
                    continue;
                }
            }

            // Task 7: Kaffeebohnen liefern (sid-321D60EE-2226-4B45-91C2-440C52F3C3BA)
            if (_tokenState & 128 == 128) {
                if (taskID == 7 && msg.sender == participants[13]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 0; // Move to EndEvent (sid-3F459627-8B09-46EE-B7A1-3BAEBBD9AD9D)
                    break; // Process ends
                }
            }

            break; // Exit loop if no conditions matched
        }
        tokenState = _tokenState; // Update the state
    }
}