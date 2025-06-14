// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T05:15:53.672Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_b0fc5cfb_f887_49c9_ad2b_fc17044dd0ff {
    uint public tokenState = 1;
    address[2] public participants;
    
    constructor(address[2] memory _participants) {
        participants = _participants;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-37B5ED95-2A1C-454D-B673-5D7CAAC325B6
                if (1 == id && msg.sender == participants[0]) {
                    // custom code for task here
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // End event transition
                _tokenState &= ~uint(4);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
