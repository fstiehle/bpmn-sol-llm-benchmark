// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:48:23.811Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_3e540bea_9ea2_4ddb_8cd0_a0b78c942efa {
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
            // Start Event to Task 1 (sid-36C0040E-7810-4DE4-BB7B-C312FB7C51F0)
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) { // Initiating participant: sid-3E930ED8-3E24-4824-A4F2-45E0076D04F7
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to Task 2
                    id = 0;
                    continue;
                }
            }

            // Task 2 (sid-663EA2D1-A326-4D98-A4DE-2D130817DE4D)
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[3]) { // Initiating participant: sid-C36707DA-AA82-45DF-8930-634ECFB30519
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Gateway sid-CB3A6E8D-2ED0-45DB-AB9A-F2D0E9927521
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-CB3A6E8D-2ED0-45DB-AB9A-F2D0E9927521 (Exclusive Gateway Diverging)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Task 4 (sid-BD677F30-8130-47F2-8E95-1D4769FB1F47)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default path to Gateway sid-B8FF6893-4145-438B-8A05-E5CD223E62FE
                    continue;
                }
            }

            // Task 4 (sid-BD677F30-8130-47F2-8E95-1D4769FB1F47)
            if (_tokenState & 8 == 8) {
                if (4 == id && msg.sender == participants[6]) { // Initiating participant: sid-EDA966B4-8789-4F32-B58F-46DE2AE87109
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to Gateway sid-C45A5040-1C56-4BFE-8A80-708F6D3EC2A3
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-C45A5040-1C56-4BFE-8A80-708F6D3EC2A3 (Exclusive Gateway Diverging)
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Gateway sid-006249D0-5879-424A-B9A4-B9F0A079E4E7
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Default path to Task 6 (sid-CCF9A421-42C3-43D0-A441-374253CCCA89)
                    continue;
                }
            }

            // Task 6 (sid-CCF9A421-42C3-43D0-A441-374253CCCA89)
            if (_tokenState & 128 == 128) {
                if (6 == id && msg.sender == participants[10]) { // Initiating participant: sid-953697B6-9148-4340-9663-F9B08FA535F1
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to Task 7 (sid-2173A2F1-5CB3-47EE-8C89-BFCF203F248A)
                    id = 0;
                    continue;
                }
            }

            // Task 7 (sid-2173A2F1-5CB3-47EE-8C89-BFCF203F248A)
            if (_tokenState & 256 == 256) {
                if (7 == id && msg.sender == participants[13]) { // Initiating participant: sid-02617919-7637-40A6-9629-D53A3BA7E05C
                    _tokenState &= ~uint(256);
                    _tokenState |= 64; // Move to Gateway sid-006249D0-5879-424A-B9A4-B9F0A079E4E7
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-006249D0-5879-424A-B9A4-B9F0A079E4E7 (Exclusive Gateway Converging)
            if (_tokenState & 64 == 64) {
                _tokenState &= ~uint(64);
                _tokenState |= 512; // Move to Task 5 (sid-415D7F49-1116-4014-9313-6F5CF696EF08)
                continue;
            }

            // Task 5 (sid-415D7F49-1116-4014-9313-6F5CF696EF08)
            if (_tokenState & 512 == 512) {
                if (5 == id && msg.sender == participants[9]) { // Initiating participant: sid-B3F368F3-E092-484B-8CB2-59AF6FBF061F
                    _tokenState &= ~uint(512);
                    _tokenState |= 16; // Move to Gateway sid-B8FF6893-4145-438B-8A05-E5CD223E62FE
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-B8FF6893-4145-438B-8A05-E5CD223E62FE (Exclusive Gateway Converging)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 1024; // Move to Task 3 (sid-EBC1C952-4F4E-4F3B-A435-993EC8C7A873)
                continue;
            }

            // Task 3 (sid-EBC1C952-4F4E-4F3B-A435-993EC8C7A873)
            if (_tokenState & 1024 == 1024) {
                if (3 == id && msg.sender == participants[5]) { // Initiating participant: sid-C2824894-BA68-4D16-BDD0-C780CA2ABE8E
                    _tokenState &= ~uint(1024);
                    _tokenState = 0; // End of process
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}