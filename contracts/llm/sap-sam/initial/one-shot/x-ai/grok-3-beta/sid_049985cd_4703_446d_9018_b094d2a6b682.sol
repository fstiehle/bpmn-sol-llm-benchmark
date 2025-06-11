// test x-ai/grok-3-beta - one-shot at 2025-06-11T18:39:25.715Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
    uint public tokenState = 1; // Start with the StartEvent active
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
            // StartEvent (sid-45C134F2-D2FD-4D0A-B72E-DBAFC35FB0DF)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to Make travel offer task
                continue;
            }

            // Make travel offer (sid-227226E5-6AEA-41EF-A8B0-83C9A219227F, taskID: 1)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[1]) { // Travel Agency
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Gateway sid-757D9B45-2990-4D72-BFA2-4DEC61AA8DA4
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-757D9B45-2990-4D72-BFA2-4DEC61AA8DA4 (Exclusive Gateway)
            if (_tokenState & 4 == 4) {
                // Conditions for branching (no explicit conditions in XML, assume manual choice via task execution)
                _tokenState &= ~uint(4);
                if (id == 2) {
                    _tokenState |= 8; // Path to Reject offer (taskID: 2)
                } else if (id == 3) {
                    _tokenState |= 16; // Path to Book Travel & confirm booking (taskID: 3)
                } else {
                    _tokenState |= 8; // Default path to Reject offer
                }
                continue;
            }

            // Reject offer (sid-C49AC673-113F-41E0-A8FF-FA0D5D2267FA, taskID: 2)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) { // Customer
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End event (sid-3AC96AC1-6DA1-4836-9C0E-F9EDB21DB603)
                    break; // Process ends
                }
            }

            // Book Travel & confirm booking (sid-C9EDEBCA-CFD7-47C8-B834-6275614314F0, taskID: 3)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) { // Customer
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Pay Travel task
                    id = 0;
                    continue;
                }
            }

            // Pay Travel (sid-A70C991E-702F-4C96-9488-D630468D3804, taskID: 4)
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[6]) { // Customer
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Order ticket task
                    id = 0;
                    continue;
                }
            }

            // Order ticket (sid-46204067-2C7E-484E-8BC3-5979178FE4C4, taskID: 5)
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[8]) { // Travel Agency
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to Gateway sid-4334BA60-223E-4C5F-9305-20B14D486830
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-4334BA60-223E-4C5F-9305-20B14D486830 (Exclusive Gateway)
            if (_tokenState & 128 == 128) {
                // Conditions for branching (no explicit conditions in XML, assume manual choice via task execution)
                _tokenState &= ~uint(128);
                if (id == 6) {
                    _tokenState |= 256; // Path to Confirm payment (taskID: 6)
                } else if (id == 7) {
                    _tokenState |= 512; // Path to Refuse payment (taskID: 7)
                } else {
                    _tokenState |= 256; // Default path to Confirm payment
                }
                continue;
            }

            // Confirm payment (sid-D456077E-5BB6-474E-88EC-5C0B045B5F78, taskID: 6)
            if (_tokenState & 256 == 256) {
                if (6 == id && msg.sender == participants[11]) { // Airline
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // End event (sid-3AC96AC1-6DA1-4836-9C0E-F9EDB21DB603)
                    break; // Process ends
                }
            }

            // Refuse payment (sid-85CDD208-375B-493C-808D-239AB05D7F30, taskID: 7)
            if (_tokenState & 512 == 512) {
                if (7 == id && msg.sender == participants[13]) { // Airline
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // End event (sid-3AC96AC1-6DA1-4836-9C0E-F9EDB21DB603)
                    break; // Process ends
                }
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}