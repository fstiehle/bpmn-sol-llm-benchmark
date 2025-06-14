// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:14:39.596Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_ae6d78b5_58ad_41de_9063_b2bc70e1543f {
    uint public tokenState = 1; // Start with the StartEvent active
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent (sid-5354BFC2-6EF8-4C15-9FF9-BDB693354B1C)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to GPA Conversion task
                continue;
            }

            // GPA Conversion (sid-365F91D0-DD9F-486E-B83C-DECBCA9A7B0A, taskID: 1)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // Initiating participant UH
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Gateway sid-114A78C7-A89B-4295-AF5D-D8A3EA853243
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-114A78C7-A89B-4295-AF5D-D8A3EA853243 (Diverging)
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                if (conditions & 1 == 1) {
                    _tokenState |= 32; // Move to failed path (sid-CAC00A41-BE49-426D-97A3-B98EC01408A2)
                } else {
                    _tokenState |= 8; // Default path to Check for plagiarism (sid-FDC6DD88-3121-4EC4-BFBA-DFF7B6402410)
                }
                continue;
            }

            // Check for plagiarism (sid-FDC6DD88-3121-4EC4-BFBA-DFF7B6402410, taskID: 2)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) { // Initiating participant UH
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to Gateway sid-11B408AA-7D2E-4EF8-A0D7-F8C87421FD63
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-11B408AA-7D2E-4EF8-A0D7-F8C87421FD63 (Diverging)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                if (conditions & 2 == 2) {
                    _tokenState |= 64; // Move to Assess application letter (sid-B2BADF13-36D1-4B5D-AE77-E09232974D90)
                } else {
                    _tokenState |= 32; // Default path to failed (sid-CAC00A41-BE49-426D-97A3-B98EC01408A2)
                }
                continue;
            }

            // Gateway sid-CAC00A41-BE49-426D-97A3-B98EC01408A2 (Converging)
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 128; // Default path to Application marked failed (sid-C569B56D-1EA0-46C8-81A4-12C4216C6406)
                continue;
            }

            // Assess application letter (sid-B2BADF13-36D1-4B5D-AE77-E09232974D90, taskID: 3)
            if (_tokenState & 64 == 64) {
                if (3 == id && msg.sender == participants[4]) { // Initiating participant UH
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to Assign ranking (sid-EE6F5910-1D15-4F9C-8C28-72AD4D9070D2)
                    id = 0;
                    continue;
                }
            }

            // Assign ranking (sid-EE6F5910-1D15-4F9C-8C28-72AD4D9070D2, taskID: 4)
            if (_tokenState & 256 == 256) {
                if (4 == id && msg.sender == participants[6]) { // Initiating participant UH
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to Gateway sid-28259204-E681-42B9-86C5-1DF0AF0DC7CB
                    id = 0;
                    continue;
                }
            }

            // Application marked failed (sid-C569B56D-1EA0-46C8-81A4-12C4216C6406, taskID: 5)
            if (_tokenState & 128 == 128) {
                if (5 == id && msg.sender == participants[8]) { // Initiating participant UH
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Move to Gateway sid-28259204-E681-42B9-86C5-1DF0AF0DC7CB
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-28259204-E681-42B9-86C5-1DF0AF0DC7CB (Converging)
            if (_tokenState & 512 == 512) {
                _tokenState &= ~uint(512);
                _tokenState |= 1024; // Move to Create preliminary list (sid-6AEC28B8-8F55-4AE8-908F-F60609161299)
                continue;
            }

            // Create preliminary list of applications (sid-6AEC28B8-8F55-4AE8-908F-F60609161299, taskID: 6)
            if (_tokenState & 1024 == 1024) {
                if (6 == id && msg.sender == participants[10]) { // Initiating participant UH
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