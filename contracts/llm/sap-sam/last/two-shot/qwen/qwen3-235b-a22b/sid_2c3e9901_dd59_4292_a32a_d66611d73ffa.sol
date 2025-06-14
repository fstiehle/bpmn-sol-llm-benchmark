// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T06:29:43.473Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_2c3e9901_dd59_4292_a32a_d66611d73ffa {
    uint public tokenState = 1;
    address[10] public participants;
    uint public conditions;
    constructor(address[10] memory _participants) {
        participants = _participants;
    }
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-4A166C13 Vastaanota tilaus --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState ^= 1;
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            } else if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    // <--- exclusiveGateway condition sid-7AF45A6B --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                } else {
                    // <--- exclusiveGateway default sid-603CAF26 --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            } else if (_tokenState & 4 == 4) {
                // <--- sid-6E4D3B42 Informoi asiakasta --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    break;
                }
            } else if (_tokenState & 8 == 8) {
                // <--- sid-3CC56E18 Lähetä lasku --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            } else if (_tokenState & 16 == 16) {
                // <--- sid-51D6AEC7 Vastaanota maksu --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            } else if (_tokenState & 32 == 32) {
                // <--- sid-C3D62CC0 Lähetä tilaus --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    break;
                }
            } else {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
