// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:29:16.674Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_one_shot_sid_71125e05_334a_4cd3_b125_0827d784ee38 {
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
                // <--- ChoreographyTask sid-64746EC4-A158-4AE0-B4FC-8463464FABB8 Message 1 --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask sid-2CC1E296-BC71-4CC8-9910-DB213486212F Message 2 --->
                if (2 == id && msg.sender == participants[2]) {
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