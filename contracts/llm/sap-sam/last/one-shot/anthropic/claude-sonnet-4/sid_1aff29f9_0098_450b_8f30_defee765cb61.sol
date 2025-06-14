// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:07:34.717Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_1aff29f9_0098_450b_8f30_defee765cb61 {
    uint public tokenState = 1;
    address[20] public participants;
    uint public conditions;
    
    constructor(address[20] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event - auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-08E44EEC-F5A2-4529-9B95-DAA0B1553E3B - Kunde fuellt Formular aus
                if (4 == taskID && msg.sender == participants[6]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-71EECEC0-BED7-4D5B-A3B9-F5E0A08A1B91 - Ticket erstellen
                if (1 == taskID && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-04736748-3A55-4172-8EC2-70379C6D6C1C - Meldet sich an
                if (10 == taskID && msg.sender == participants[18]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-C3423358-0834-46F4-9BEF-2312F3F5670B - Ticket auswaehlen
                if (2 == taskID && msg.sender == participants[2]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 32 == 32) {
                // Exclusive Gateway sid-0F1C5333-10D0-4B87-80D3-59126F5AB5F7
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0; // End event
                    break;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Default path
                    continue;
                }
            }
            
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-640C6210-0293-4116-9743-EE1E3CECEBC1 - Ticket bearbeiten
                if (3 == taskID && msg.sender == participants[4]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-4A7608DF-1B16-49D8-8329-8CE3A53FEB93 - Status veraendern
                if (5 == taskID && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-C1BA5A74-1714-45AF-B4E3-8A6DA558B477 - Ticket abschliessen
                if (6 == taskID && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 512 == 512) {
                // ChoreographyTask sid-B568F431-74F6-46AC-932A-58E90EB96830 - Ticket abspeichern
                if (7 == taskID && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask sid-0E65D5AE-A506-4126-AD69-2C5AF174C9BE - Rueckmeldung zu Bearbeitung geben
                if (8 == taskID && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask sid-B42BA3E1-4936-4177-9785-0CBF5888F7DB - Rueckmeldung einsehen
                if (9 == taskID && msg.sender == participants[16]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // End event
                    break;
                }
            }
            
            break;
        }
        
        tokenState = _tokenState;
    }
}
