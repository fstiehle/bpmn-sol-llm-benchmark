// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:39:51.283Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_22f8068f_fb74_4899_893d_d4c2e98fbf20 {
    uint public tokenState = 1; // Start with the initial state active
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-E5490C4B-C24A-431D-B77A-49760BB4CCB8 Generate Purchase Request --->
                if (1 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-AB28E743-A241-4766-9C91-DAFABA0E39D1 Generate Purchase Order --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-A91EF0BA-F5C4-42CE-8076-0197BA6E0E9D Generate Invoice --->
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-2150BBD8-18C8-4D8C-A164-2D07C84B7011 Process Payment --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End of process
                    break; // Terminate
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}