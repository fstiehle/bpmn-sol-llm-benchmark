// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:25:38.574Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_95718e84_e21c_4852_8383_b8aa8c8c4073 {
    uint public tokenState = 1;
    address[2] public participants;
    
    constructor(address[2] memory _participants) {
        participants = _participants;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-944D7F52-9327-43FF-A082-7C5F472722FA View Application Status --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
