// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T20:52:06.001Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_0de8854f_07eb_4d06_8e49_148a373df43a {
    uint public tokenState = 1;
    address[2] public participants;
    uint public conditions;
    
    constructor(address[2] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-2A58777F-7651-4BB3-B240-7ECB47DD3D5B Entrega reportaje propio --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 0;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
