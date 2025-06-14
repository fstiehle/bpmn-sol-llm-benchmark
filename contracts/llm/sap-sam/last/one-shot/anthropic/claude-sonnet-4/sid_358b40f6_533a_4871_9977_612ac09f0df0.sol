// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:15:31.699Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_358b40f6_533a_4871_9977_612ac09f0df0 {
    uint public tokenState = 1;
    address[13] public participants;
    uint public conditions;
    
    constructor(address[13] memory _participants) {
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
                // ChoreographyTask: Unterlagen von LV anfordern
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask: Unterlagen fuer Bank bearbeiten
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask: Pfandrecht, Eintragung ins Grundbuch
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask: Zuzaehlung nach Baufortschritt (einfordern)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask: Endabrechnung mit Land OOe
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask: Sondertilgung berechnen und buchen
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0;
                    break; // End event
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
