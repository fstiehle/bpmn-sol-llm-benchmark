// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T18:31:47.404Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_95718e84_e21c_4852_8383_b8aa8c8c4073 {
    uint public tokenState = 1;
    address[2] public participants;

    constructor(address[2] memory _participants) {
        participants = _participants;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- StartEvent --->
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-944D7F52-9327-43FF-A082-7C5F472722FA View Application Status --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- EndEvent --->
                _tokenState &= ~uint(4);
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}