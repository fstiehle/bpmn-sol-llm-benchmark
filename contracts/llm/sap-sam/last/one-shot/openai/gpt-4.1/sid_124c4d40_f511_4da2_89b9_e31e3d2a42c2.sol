// test openai/gpt-4.1 - one-shot at 2025-06-11T23:25:44.897Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_124c4d40_f511_4da2_89b9_e31e3d2a42c2 {
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-D8555B72_6BD1_4CB3_A08C_30B797457ED0 Vastaanota korvaushakemus --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-5C7DD1FE_1B2E_407E_A681_B6F3E3B52681 Laheta kirje --->
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}