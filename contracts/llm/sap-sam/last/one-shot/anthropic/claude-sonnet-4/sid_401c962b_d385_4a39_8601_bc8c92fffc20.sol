// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:17:52.927Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_401c962b_d385_4a39_8601_bc8c92fffc20 {
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
                // Start event - auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Parallel gateway split - auto transition
                _tokenState &= ~uint(2);
                _tokenState |= 12; // Activate both parallel paths (4 + 8)
                continue;
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Call decision (Reviewer)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask Call decision (Organizer)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 48 == 48) {
                // Parallel gateway join - auto transition
                _tokenState &= ~uint(48);
                _tokenState |= 0; // End
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
