// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:10:16.750Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_51318cd8_87de_43eb_ae12_53a8722ff3e8 {
    uint public tokenState = 1;
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-1BAD194A-9703-4904-A294-AC9F0CAE37CB Bestellung aufgeben
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-5215CCEA-6F76-4A6B-A05C-6C8B496FC02A Kassenbon aushaendigen
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-368D5D27-DD58-48D4-9867-3245E8D661C6 Quitting bezahlen
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-0E20545F-12E5-419D-8798-AD7B746B8744 Informationen zu Feedback uebergeben
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Exclusive Gateway sid-6C4A1F5C-E949-42A8-8C23-6CEA1F458315
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-2A104376-3AFF-40B5-9599-9F5F0B636EC7 Kunde will kein Feedback abgeben
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-AB7BC7F4-570A-419F-9ADD-6E51F01F3F04 Zustimmung
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-AC4DDDB3-60C0-4778-86F8-7DD28C136825 Feedback abgeben
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // End Event
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
