// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:40:12.462Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_674da579_dcef_4775_b703_35d246b67bce {
    uint public tokenState = 1;
    address[6] public participants;
    uint public conditions;
    
    constructor(address[6] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-7C541969-B28F-43BC-A336-4AE9114B733E Anfrage bearbeiten
                if (1 == taskID && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-1E15802F-4A68-429E-8EF9-89606F2F8533 Angebot erstellen
                if (2 == taskID && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-CB82D50A-555C-41E9-A8D0-359DFBC06DBA Buchungen durchfuehren
                if (3 == taskID && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // End event reached
                }
            }
            
            break;
        }
        
        tokenState = _tokenState;
    }
}
