// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:34:17.163Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
    uint public tokenState = 1; // Start with the start event active
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event (sid-45C134F2-D2FD-4D0A-B72E-DBAFC35FB0DF) auto transition to task 1
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate task 1 (sid-227226E5-6AEA-41EF-A8B0-83C9A219227F)
                continue;
            }

            // Task 1: Make travel offer (sid-227226E5-6AEA-41EF-A8B0-83C9A219227F)
            if (_tokenState & 2 == 2) {
                if (taskID == 1 && msg.sender == participants[1]) { // Initiating participant: Travel Agency
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway (sid-757D9B45-2990-4D72-BFA2-4DEC61AA8DA4)
                    taskID = 0;
                    continue;
                }
            }

            // Task 2: Reject offer (sid-C49AC673-113F-41E0-A8FF-FA0D5D2267FA)
            if (_tokenState & 8 == 8) {
                if (taskID == 2 && msg.sender == participants[2]) { // Initiating participant: Customer
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // Move to end event (sid-3AC96AC1-6DA1-4836-9C0E-F9EDB21DB603)
                    break;
                }
            }

            // Task 3: Book Travel & confirm booking (sid-C9EDEBCA-CFD7-47C8-B834-6275614314F0)
            if (_tokenState & 16 == 16) {
                if (taskID == 3 && msg.sender == participants[4]) { // Initiating participant: Customer
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to task 4 (sid-A70C991E-702F-4C96-9488-D630468D3804)
                    taskID = 0;
                    continue;
                }
            }

            // Task 4: Pay Travel (sid-A70C991E-702F-4C96-9488-D630468D3804)
            if (_tokenState & 32 == 32) {
                if (taskID == 4 && msg.sender == participants[6]) { // Initiating participant: Customer
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to task 5 (sid-46204067-2C7E-484E-8BC3-5979178FE4C4)
                    taskID = 0;
                    continue;
                }
            }

            // Task 5: Order ticket (sid-46204067-2C7E-484E-8BC3-5979178FE4C4)
            if (_tokenState & 64 == 64) {
                if (taskID == 5 && msg.sender == participants[8]) { // Initiating participant: Travel Agency
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to gateway (sid-4334BA60-223E-4C5F-9305-20B14D486830)
                    taskID = 0;
                    continue;
                }
            }

            // Task 6: Confirm payment (sid-D456077E-5BB6-474E-88EC-5C0B045B5F78)
            if (_tokenState & 256 == 256) {
                if (taskID == 6 && msg.sender == participants[11]) { // Initiating participant: Airline
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // Move to end event (sid-3AC96AC1-6DA1-4836-9C0E-F9EDB21DB603)
                    break;
                }
            }

            // Task 7: Refuse payment (sid-85CDD208-375B-493C-808D-239AB05D7F30)
            if (_tokenState & 512 == 512) {
                if (taskID == 7 && msg.sender == participants[13]) { // Initiating participant: Airline
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // Move to end event (sid-3AC96AC1-6DA1-4836-9C0E-F9EDB21DB603)
                    break;
                }
            }

            // Exclusive Gateway (sid-757D9B45-2990-4D72-BFA2-4DEC61AA8DA4)
            if (_tokenState & 4 == 4) {
                // No conditions specified in the model, assume default behavior
                // Path 1: Reject offer (task 2)
                // Path 2: Book Travel (task 3)
                // Since no conditions, allow both paths (or implement custom logic if needed)
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Activate task 2 (sid-C49AC673-113F-41E0-A8FF-FA0D5D2267FA)
                _tokenState |= 16; // Activate task 3 (sid-C9EDEBCA-CFD7-47C8-B834-6275614314F0)
                continue;
            }

            // Exclusive Gateway (sid-4334BA60-223E-4C5F-9305-20B14D486830)
            if (_tokenState & 128 == 128) {
                // No conditions specified in the model, assume default behavior
                // Path 1: Confirm payment (task 6)
                // Path 2: Refuse payment (task 7)
                // Since no conditions, allow both paths (or implement custom logic if needed)
                _tokenState &= ~uint(128);
                _tokenState |= 256; // Activate task 6 (sid-D456077E-5BB6-474E-88EC-5C0B045B5F78)
                _tokenState |= 512; // Activate task 7 (sid-85CDD208-375B-493C-808D-239AB05D7F30)
                continue;
            }

            break;
        }
        tokenState = _tokenState;
    }
}