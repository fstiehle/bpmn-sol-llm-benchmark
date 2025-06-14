// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:57:51.272Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_a451ac4c_9f1c_4c6c_8bba_955fbad275cd {
    uint public tokenState = 1;
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask sid-108E4ABE-4DB0-44C2-8647-91EC4B6524B7 Ware reklamieren
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-813DE3BA-8680-45CB-925D-ED87F741FA23 Retour-Etikett erstellen
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-EEE1B15D-5719-483C-8B5A-55043DDC82FA Ware abschicken
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-429BDAF2-1423-458C-B9EB-EBC8FE1DA435 Geld zurück
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-FB127610-7505-4F9E-ACA7-836BB1D685A4 Ware zurück
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 8 == 8) {
                // Exclusive Gateway sid-FCC2BF6C-D7AB-430F-BC38-3A10AEB6D9EC
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
