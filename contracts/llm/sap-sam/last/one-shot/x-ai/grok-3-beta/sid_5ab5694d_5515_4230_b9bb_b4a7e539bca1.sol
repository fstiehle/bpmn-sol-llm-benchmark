// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:54:04.559Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_5ab5694d_5515_4230_b9bb_b4a7e539bca1 {
    uint public tokenState = 1; // Start with the StartEvent active
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent (sid-C64EC0B8-765D-4E41-94F0-B78FA5E2C357) - Bit 1
            if (_tokenState & 1 == 1) {
                // Auto transition to Send Inquiry task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Send Inquiry task
                continue;
            }

            // Send Inquiry (sid-8E16CDD8-FCCE-4281-86AC-4BCBCFE72039) - Bit 2, taskID 1
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Gateway sid-9EFDDE1D-EB86-4A7D-90CF-568385F476F7
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-9EFDDE1D-EB86-4A7D-90CF-568385F476F7 - Bit 4
            if (_tokenState & 4 == 4) {
                // Auto transition to Send Offer task (default path)
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Activate Send Offer task
                continue;
            }

            // Send Offer (sid-074D9CC7-91D3-4550-AE26-694F351C006F) - Bit 8, taskID 2
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Gateway sid-DA564472-047F-440A-9DAE-C7AA93AB37A7
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-DA564472-047F-440A-9DAE-C7AA93AB37A7 - Bit 16
            if (_tokenState & 16 == 16) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate Send Rejection task
                    continue;
                } else if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate Place Order task
                    continue;
                } else {
                    // Default path to Send Change Request
                    _tokenState &= ~uint(16);
                    _tokenState |= 128; // Activate Send Change Request task
                    continue;
                }
            }

            // Send Rejection (sid-66D06C97-422F-4249-A81C-D6115A5D7F12) - Bit 32, taskID 4
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            // Place Order (sid-ECB9028C-F467-49ED-B114-64F2097E035E) - Bit 64, taskID 5
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Find Designer task
                    id = 0;
                    continue;
                }
            }

            // Send Change Request (sid-4DD97F2F-327D-4F05-8D9C-9C37B85BED6B) - Bit 128, taskID 3
            if (_tokenState & 128 == 128) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 4; // Loop back to Gateway sid-9EFDDE1D-EB86-4A7D-90CF-568385F476F7
                    id = 0;
                    continue;
                }
            }

            // Find Designer (sid-9306CB9F-8A06-4759-93CD-F85DE42BF584) - Bit 256, taskID 6
            if (_tokenState & 256 == 256) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate Handle Graphics Production task
                    id = 0;
                    continue;
                }
            }

            // Handle Graphics Production (sid-62DD5540-8F48-4ECF-8EE8-1A2F32A4FE52) - Bit 512, taskID 7
            if (_tokenState & 512 == 512) {
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate Get Approval task
                    id = 0;
                    continue;
                }
            }

            // Get Approval (sid-1BDEF833-BC6F-4918-9A00-0DFFCBC10F9E) - Bit 1024, taskID 8
            if (_tokenState & 1024 == 1024) {
                if (8 == id && msg.sender == participants[15]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}