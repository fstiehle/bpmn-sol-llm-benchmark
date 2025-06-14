// test openai/gpt-4.1 - one-shot at 2025-06-12T00:05:47.741Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_b0fc5cfb_f887_49c9_ad2b_fc17044dd0ff {
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid_37B5ED95_2A1C_454D_B673_5D7CAAC325B6 --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    // Transition to end event, so terminate process
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}