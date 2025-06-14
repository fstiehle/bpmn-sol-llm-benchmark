// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:58:46.971Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_a9d070e4_8c5c_429e_971e_e2a088deef78 {
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
                // ChoreographyTask Anfrage Pauschalreise
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 6;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask Angebotsanfrage (Flight)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Angebotsanfrage (Hotel)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask Ruecksendung von Angebot (Flight)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Ruecksendung von Angebot (Hotel)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask Uebermittelt Angebote und Rechnung
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 384;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Buchungsanfrage (Flight)
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Buchungsanfrage (Hotel)
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask Buchungsbestaetigung und Rechnung (Hotel)
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask Buchungsbestaetigung und Rechnung (Flight)
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 6 == 6) {
                // Parallel Gateway Split
                _tokenState &= ~uint(6);
                _tokenState |= 6;
                continue;
            }
            if (_tokenState & 48 == 48) {
                // Parallel Gateway Join
                _tokenState &= ~uint(48);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 384 == 384) {
                // Parallel Gateway Split
                _tokenState &= ~uint(384);
                _tokenState |= 384;
                continue;
            }
            if (_tokenState & 2560 == 2560) {
                // Parallel Gateway Join
                _tokenState &= ~uint(2560);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
