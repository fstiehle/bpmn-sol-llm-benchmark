// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:11:00.381Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_25ac1cbf_f096_40c5_bd89_e80c5877c97c {
    uint public tokenState = 1;
    address[4] public participants;
    uint public conditions;
    
    constructor(address[4] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask M2
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask M3
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
