// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T05:15:46.720Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_af6aa62d_6560_44f0_bbbc_66fc174549b6 {
    uint public tokenState = 1;
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask Envoie du CV et de la lettre de motivation
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask Envoie de la reponse a la demande de candidature
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask Proposition d une date d entretien
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Reponse a la proposition de date
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Convocation des 6 experts
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Envoie du vote et de la deliberation
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask Envoie de la decision finale
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask Transmission de la decision finale
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway after response
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                // Exclusive Gateway after date response
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // Exclusive Gateway after final decision
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0;
                    break;
                } else {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
