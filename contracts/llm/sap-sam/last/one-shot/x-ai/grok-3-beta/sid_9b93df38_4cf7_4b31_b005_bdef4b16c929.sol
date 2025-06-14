// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:08:49.547Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_9b93df38_4cf7_4b31_b005_bdef4b16c929 {
    uint public tokenState = 1; // Start with the start event active
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
                // Start Event sid-4761F863-08B8-47CA-9FCE-9CCA38E4629B
                // Automatically transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Make Travel Offer task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // sid-12F8A9A9-1BBA-4189-B2BB-50302A8DAE12 Make Travel Offer (taskID: 1)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Exclusive Gateway sid-F7FDBC71-4FD3-420C-B46B-DABEACB56EDB
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway sid-F7FDBC71-4FD3-420C-B46B-DABEACB56EDB
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Book Travel task (sid-6729643A-010F-42B7-9B5C-B7CC2F46F517)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default path: Cancel Offer task (sid-3AAF6F9A-764B-4E6B-A5E6-64A0BB764BF5)
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // sid-6729643A-010F-42B7-9B5C-B7CC2F46F517 Book Travel (taskID: 3)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate Confirm Booking task (sid-0EB774D6-DAE9-4EAB-8D9B-C96479746F2D)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // sid-3AAF6F9A-764B-4E6B-A5E6-64A0BB764BF5 Cancel Offer (taskID: 2)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // End event sid-45D99603-C78D-4A3E-A921-028E7B7C18BE (terminate)
                    break; // Process ends
                }
            }
            if (_tokenState & 32 == 32) {
                // sid-0EB774D6-DAE9-4EAB-8D9B-C96479746F2D Confirm Booking (taskID: 4)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate Pay Travel task (sid-19A99E16-1C90-4C88-9D6A-393CEC7C2937)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // sid-19A99E16-1C90-4C88-9D6A-393CEC7C2937 Pay Travel (taskID: 5)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Order Ticket task (sid-4219CAE4-9942-44EB-8A02-58EFD4D1A79B)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // sid-4219CAE4-9942-44EB-8A02-58EFD4D1A79B Order Ticket (taskID: 6)
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Confirm Payment task (sid-BC9B7450-D485-4E95-A47D-53C52B27515E)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // sid-BC9B7450-D485-4E95-A47D-53C52B27515E Confirm Payment (taskID: 7)
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // End event sid-45D99603-C78D-4A3E-A921-028E7B7C18BE (terminate)
                    break; // Process ends
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}