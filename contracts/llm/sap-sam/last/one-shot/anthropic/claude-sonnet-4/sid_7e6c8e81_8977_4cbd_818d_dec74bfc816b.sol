// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:05:00.243Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_7e6c8e81_8977_4cbd_818d_dec74bfc816b {
    uint public tokenState = 1;
    address[20] public participants;
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask Receive documents
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Application contains errors
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Reject application
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask Application resubmissions
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask Applications verified
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Receive final ranking list
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Notify Applicants
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask Accept offer
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask Reject offer
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8192 == 8192) {
                // ChoreographyTask Confirmation of applicants
                if (10 == id && msg.sender == participants[19]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 16;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    continue;
                } else {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                _tokenState &= ~uint(4096);
                _tokenState |= 8192;
                continue;
            }
            if (_tokenState & 64 == 64) {
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 16;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
