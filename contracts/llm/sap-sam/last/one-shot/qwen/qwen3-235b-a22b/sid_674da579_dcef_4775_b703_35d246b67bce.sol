// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:45:19.782Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_674da579_dcef_4775_b703_35d246b67bce {
    uint public tokenState = 1;
    address[6] public participants;
    uint public conditions;
    constructor(address[6] memory _participants) {
        participants = _participants;
    }
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 4 == 4) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break; 
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
