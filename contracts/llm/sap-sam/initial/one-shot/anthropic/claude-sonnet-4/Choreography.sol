// test anthropic/claude-sonnet-4 - one-shot at 2025-06-11T18:35:22.176Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_Choreography {
    uint public tokenState = 1;
    address[3] public participants;
    uint public conditions;
    
    constructor(address[3] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask_1vnykqp Order goods
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask_16lc74v Produce goods
                if (2 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask_07t2zjo Inform customer
                if (3 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 64 == 64) {
                // ChoreographyTask_056ylqg Ship goods
                if (4 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(64);
                    _tokenState = 0;
                    break;
                }
            }
            
            if (_tokenState & 2 == 2) {
                // Gateway_1bpkhpg exclusive gateway
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 32;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 12;
                    continue;
                }
            }
            
            if (_tokenState & 12 == 12) {
                // Gateway_1klfaw3 parallel gateway split
                _tokenState &= ~uint(12);
                _tokenState |= 12;
                continue;
            }
            
            if (_tokenState & 16 == 16) {
                // Gateway_0xcnzox parallel gateway join (waiting for both tokens)
                if ((_tokenState & 16) == 16) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }
            
            if (_tokenState & 32 == 32) {
                // Gateway_1yl9mch exclusive gateway
                _tokenState &= ~uint(32);
                _tokenState |= 64;
                continue;
            }
            
            break;
        }
        
        tokenState = _tokenState;
    }
}
