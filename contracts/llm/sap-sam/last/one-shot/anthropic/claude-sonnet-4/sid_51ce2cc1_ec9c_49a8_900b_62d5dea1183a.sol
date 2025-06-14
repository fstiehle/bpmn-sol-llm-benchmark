// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:10:23.624Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_51ce2cc1_ec9c_49a8_900b_62d5dea1183a {
    uint public tokenState = 1;
    address[4] public participants;
    
    constructor(address[4] memory _participants) {
        participants = _participants;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask_CT1 CT 1 --->
                if (1 == id && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_CT2 CT 2 --->
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
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
