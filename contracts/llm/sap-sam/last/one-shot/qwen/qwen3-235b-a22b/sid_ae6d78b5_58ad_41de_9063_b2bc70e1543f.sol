// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:23:22.367Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_ae6d78b5_58ad_41de_9063_b2bc70e1543f {
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
            uint oldState = _tokenState;

            if (_tokenState & 1 == 1) {
                // ChoreographyTask_365F91D0 (GPA Conversion)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 2 == 2) {
                // Gateway sid-114A78C7 (exclusive diverging)
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 64;
                } else {
                    _tokenState |= 4;
                }
                continue;
            }

            if (_tokenState & 4 == 4) {
                // ChoreographyTask_FDC6DD88 (Check for plagiarism)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // Gateway sid-11B408AA (exclusive diverging)
                _tokenState &= ~uint(8);
                if (conditions & 2 == 2) {
                    _tokenState |= 16;
                } else {
                    _tokenState |= 64;
                }
                continue;
            }

            if (_tokenState & 16 == 16) {
                // ChoreographyTask_B2BADF13 (Assess application letter)
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 32 == 32) {
                // ChoreographyTask_EE6F5910 (Assign ranking)
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                // Gateway sid-CAC00A41 (exclusive converging)
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                continue;
            }

            if (_tokenState & 128 == 128) {
                // ChoreographyTask_C569B56D (Application marked 'failed')
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 256 == 256) {
                // Gateway sid-28259204 (exclusive converging)
                _tokenState &= ~uint(256);
                _tokenState |= 512;
                continue;
            }

            if (_tokenState & 512 == 512) {
                // ChoreographyTask_6AEC28B8 (Create preliminary list)
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    // End of process
                }
            }

            if (_tokenState == oldState) break;
        }
        tokenState = _tokenState;
    }
}
