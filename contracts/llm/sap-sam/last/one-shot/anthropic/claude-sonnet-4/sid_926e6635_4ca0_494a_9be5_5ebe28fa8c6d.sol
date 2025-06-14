// test anthropic/claude-sonnet-4 - one-shot at 2025-06-14T00:26:31.488Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_926e6635_4ca0_494a_9be5_5ebe28fa8c6d {
    uint public tokenState = 1;
    address[4] public participants;
    
    constructor(address[4] memory _participants) {
        participants = _participants;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event - auto transition to parallel gateway
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // Parallel gateway split - activate both branches
                _tokenState &= ~uint(2);
                _tokenState |= 12; // 4 + 8 for both tasks
                continue;
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-984B95C1-C450-4BCC-A703-06A3F1E372B8
                if (1 == taskID && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A
                if (2 == taskID && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 48 == 48) {
                // End event - both tasks completed
                _tokenState = 0;
                break;
            }
            
            break;
        }
        
        tokenState = _tokenState;
    }
}
