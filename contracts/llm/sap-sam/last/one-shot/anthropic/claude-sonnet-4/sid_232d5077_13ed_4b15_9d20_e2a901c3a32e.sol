// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:09:42.000Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;
    
    constructor(address[8] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 6; // Activate both parallel branches
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // ChoreographyTask task1
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask task2
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 32 == 32) {
                // ChoreographyTask task3
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break;
                }
            }
            
            if (_tokenState & 64 == 64) {
                // ChoreographyTask task4
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0;
                    break;
                }
            }
            
            if (_tokenState & 24 == 24) {
                // Parallel join - both task1 and task2 completed
                _tokenState &= ~uint(24);
                _tokenState |= 96; // Activate event-based gateway
                continue;
            }
            
            if (_tokenState & 96 == 96) {
                // Event-based gateway - activate both alternatives
                _tokenState &= ~uint(96);
                _tokenState |= 96; // Keep both task3 and task4 available
                continue;
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
