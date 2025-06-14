// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T16:06:28.873Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_ae6d78b5_58ad_41de_9063_b2bc70e1543f {
    uint public tokenState = 1;
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
            if (_tokenState & 1 == 1) {
                // Task sid-365F91D0-DD9F-486E-B83C-DECBCA9A7B0A (GPA Conversion)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Exclusive Gateway sid-114A78C7-A89B-4295-AF5D-D8A3EA853243
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 64;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                }
                continue;
            }
            if (_tokenState & 4 == 4) {
                // Task sid-FDC6DD88-3121-4EC4-BFBA-DFF7B6402410 (Check for plagiarism)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Exclusive Gateway sid-11B408AA-7D2E-4EF8-A0D7-F8C87421FD63
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                }
                continue;
            }
            if (_tokenState & 16 == 16) {
                // Task sid-B2BADF13-36D1-4B5D-AE77-E09232974D90 (Assess application letter)
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Task sid-EE6F5910-1D15-4F9C-8C28-72AD4D9070D2 (Assign ranking)
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Exclusive Gateway sid-CAC00A41-BE49-426D-97A3-B98EC01408A2
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // Task sid-C569B56D-1EA0-46C8-81A4-12C4216C6406 (Application marked 'failed')
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Exclusive Gateway sid-28259204-E681-42B9-86C5-1DF0AF0DC7CB
                _tokenState &= ~uint(256);
                _tokenState |= 512;
                continue;
            }
            if (_tokenState & 512 == 512) {
                // Task sid-6AEC28B8-8F55-4AE8-908F-F60609161299 (Create preliminary list of applications)
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
