// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:41:23.534Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_259a39a2_c4a9_43fc_9cec_94248cc82004 {
    uint public tokenState = 1;
    address[2] public participants;

    constructor(address[2] memory _participants) {
        participants = _participants;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
