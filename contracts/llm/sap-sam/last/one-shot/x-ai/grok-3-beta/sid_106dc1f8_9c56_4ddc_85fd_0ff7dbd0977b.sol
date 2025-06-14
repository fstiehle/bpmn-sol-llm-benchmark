// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:36:04.720Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_106dc1f8_9c56_4ddc_85fd_0ff7dbd0977b {
    uint public tokenState = 1;
    address[19] public participants;
    uint public conditions;

    constructor(address[19] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to first task
                continue;
            }

            // Task 1: Donation Button Click (sid-23A82866-0FE2-412A-9B17-9FE6E46FCEA3)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // Task 2: Redirect to New Website (sid-1E986972-CECF-4DC9-8AC7-3BC8307E90C4)
            if (_tokenState & 4 == 4) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // Task 3: Fill Data (sid-E48D12F9-BFD7-4A0C-8FB6-FD0EE5A205BC)
            if (_tokenState & 8 == 8) {
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway 1 (sid-993950CD-0E09-4FF2-A5E0-2CAFCA90E2F6)
            if (_tokenState & 16 == 16) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Task 4
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 512; // Move to Task 9 (default path)
                }
                continue;
            }

            // Task 4: Transmit Donation (sid-F6B8C1EE-C239-4E8C-9AF3-246ED438A4BC)
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // Task 5: Receive Donation (sid-53FE6C01-E4D5-4716-A00E-F84996F2BC00)
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // Task 6: Display Donation in Stream (sid-795BDE4F-A952-455E-887A-EA41B29BCBF2)
            if (_tokenState & 128 == 128) {
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway 2 (sid-DADEC2F1-3EEB-45C1-8C17-DC43DBCCA0F9)
            if (_tokenState & 256 == 256) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024; // Move to Task 8
                } else {
                    _tokenState &= ~uint(256);
                    _tokenState |= 2048; // Move to Task 7 (default path)
                }
                continue;
            }

            // Task 7: Read Donation (sid-BCB18608-A5AB-4284-A4C9-1A81DA0CB9E5)
            if (_tokenState & 2048 == 2048) {
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            // Task 8: Donation Not Read (sid-D7A36BA5-1446-4C4A-AD55-69BDBAE7A8CA)
            if (_tokenState & 1024 == 1024) {
                if (8 == id && msg.sender == participants[15]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            // Task 9: Payment Rejected (sid-40900C5F-68C8-458E-9723-9751E9F15431)
            if (_tokenState & 512 == 512) {
                if (9 == id && msg.sender == participants[17]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}