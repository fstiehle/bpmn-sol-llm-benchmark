// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:05:26.979Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_0de8854f_07eb_4d06_8e49_148a373df43a {
    uint public tokenState = 1;
    address[2] public participants;
    
    constructor(address[2] memory _participants) {
        participants = _participants;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask sid-2A58777F-7651-4BB3-B240-7ECB47DD3D5B Entrega reportaje propio --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState = 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
