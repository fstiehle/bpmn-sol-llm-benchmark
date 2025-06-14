// test openai/gpt-4.1 - one-shot at 2025-06-11T23:26:30.076Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_19396877_be94_440c_98de_2cc3f663a397 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            // <--- sid-8C65E42B_E757_4E52_B61B_8848CA9503FC Definiranje problema --->
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-5A4ADFFF_1BB4_4EB8_A933_FE6DE6BF79FF Istraživanje problema --->
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // ExclusiveGateway sid-D58A80C2_5366_4EAF_85D6_FF528974749C
            // (bitmask 4)
            if (_tokenState & 4 == 4) {
                bool taken = false;
                // sid-2376A4A5_53E6_4EA0_B7F1_1D68AEFB2C54: conditions & 1 == 1
                if ((conditions & 1 == 1)) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    taken = true;
                    continue;
                }
                // default: sid-070A0103_6B98_43FB_A8DF_C5D45226E28F
                if (!taken) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            // <--- sid-73121FA6_3845_470E_A214_0579501D074D Detaljno istraživanje problema --->
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // ExclusiveGateway sid-1DBE80B3_FBFF_4331_93CF_C84BF98387D3
            // (bitmask 16)
            if (_tokenState & 16 == 16) {
                // Only one outgoing (sid-275707E0_5A8A_4653_81DF_6E806117D492), auto proceed
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            // <--- sid-5E4EC884_D666_4075_A435_CF8788D1DAE2 Slanje rješenja --->
            if (_tokenState & 32 == 32) {
                if (id == 3 && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    // End event reached
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}