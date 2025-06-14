// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:16:08.640Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_b68958b7_5b3c_4598_8be5_0b2c6b878d70 {
    uint public tokenState = 1; // Starting at StartEvent
    address[18] public participants;
    uint public conditions;

    constructor(address[18] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent sid-21218B64-CFF8-46E7-8DE7-E16AC913BBB8
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to sid-6E7BC75D-207E-4D80-9AE8-CD7A71E4F01A
                continue;
            }

            // ChoreographyTask sid-6E7BC75D-207E-4D80-9AE8-CD7A71E4F01A (Task ID: 1)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // Initiating participant: sid-0F471585-1895-4008-BF83-CD19C3C35B7F (Kunde)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to sid-EDC95EBB-1DB2-45EB-B9F1-DE20B008C455
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-EDC95EBB-1DB2-45EB-B9F1-DE20B008C455 (Task ID: 2)
            if (_tokenState & 4 == 4) {
                if (2 == id && msg.sender == participants[3]) { // Initiating participant: sid-ED3A3934-055A-4351-8E98-3FB615A8ED0F (Support)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to sid-6BFA1C27-514B-4C3B-A065-8B951BB1657C (Garantiefall?)
                    id = 0;
                    continue;
                }
            }

            // ExclusiveGateway sid-6BFA1C27-514B-4C3B-A065-8B951BB1657C (Garantiefall?)
            if (_tokenState & 8 == 8) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to sid-492CD1C4-81EB-4B4B-B3C1-7BF00708AE5D
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Default path to sid-25AA23A0-E09A-4708-8B06-8184876E4159
                }
                continue;
            }

            // ChoreographyTask sid-25AA23A0-E09A-4708-8B06-8184876E4159 (Task ID: 3)
            if (_tokenState & 32 == 32) {
                if (3 == id && msg.sender == participants[4]) { // Initiating participant: sid-097003EF-0716-4C8A-83CE-DFF1DB13A797 (Support)
                    _tokenState &= ~uint(32);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            // ChoreographyTask sid-492CD1C4-81EB-4B4B-B3C1-7BF00708AE5D (Task ID: 4)
            if (_tokenState & 16 == 16) {
                if (4 == id && msg.sender == participants[6]) { // Initiating participant: sid-D287AA88-7697-412D-ADA9-585200CF1D06 (Support)
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Move to sid-2D44CA56-2A4B-4959-B2A0-7326289F57BD
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-2D44CA56-2A4B-4959-B2A0-7326289F57BD (Task ID: 5)
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[8]) { // Initiating participant: sid-8BEFFC4A-B34A-42D8-84CB-EA69A0C91035 (Support)
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to sid-2D954C33-5DAD-4D1D-928B-6B68D081BCEC (reparierbar?)
                    id = 0;
                    continue;
                }
            }

            // ExclusiveGateway sid-2D954C33-5DAD-4D1D-928B-6B68D081BCEC (reparierbar?)
            if (_tokenState & 128 == 128) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to sid-D8CFBA70-4C1A-4408-94A2-D5DB6A9AEC25
                } else {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Default path to sid-C0F110DA-170A-4626-816B-1BFAC6FD1E50
                }
                continue;
            }

            // ChoreographyTask sid-C0F110DA-170A-4626-816B-1BFAC6FD1E50 (Task ID: 6)
            if (_tokenState & 512 == 512) {
                if (6 == id && msg.sender == participants[10]) { // Initiating participant: sid-0A36F77C-1805-43D7-9165-5E00584A977E (Reparaturdienst)
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Move to sid-350EC8A3-700F-46EC-AC45-0F67663518EC
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-D8CFBA70-4C1A-4408-94A2-D5DB6A9AEC25 (Task ID: 7)
            if (_tokenState & 256 == 256) {
                if (7 == id && msg.sender == participants[12]) { // Initiating participant: sid-C889B565-0EA7-4A10-8F75-185D563221E3 (Reparaturdienst)
                    _tokenState &= ~uint(256);
                    _tokenState |= 2048; // Move to sid-9A2B984C-85DA-4FDA-A60A-8CDAA4B4F902
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-350EC8A3-700F-46EC-AC45-0F67663518EC (Task ID: 8)
            if (_tokenState & 1024 == 1024) {
                if (8 == id && msg.sender == participants[14]) { // Initiating participant: sid-5CF6EEC3-0941-49A0-AC00-2375FB134B86 (Support)
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            // ChoreographyTask sid-9A2B984C-85DA-4FDA-A60A-8CDAA4B4F902 (Task ID: 9)
            if (_tokenState & 2048 == 2048) {
                if (9 == id && msg.sender == participants[16]) { // Initiating participant: sid-A1F4119B-1D60-45AC-A316-6D57E4DF2DF7 (Support)
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}