// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:49:43.786Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_6786d958_8dc5_4a92_997d_dd34c15b6e3f {
    uint public tokenState = 4;
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
            if ((_tokenState & 4) != 0) {
                // <--- ChoreographyTask_40B088FB Request for Tender --->
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 16) != 0) {
                // <--- ChoreographyTask_546BF032 Make offer --->
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 8) != 0) {
                // <--- ChoreographyTask_3FD7392B Announce the scores --->
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 32) != 0) {
                // <--- ExclusiveGateway EC53D41D diverging --->
                _tokenState &= ~uint(32);
                if ((conditions & 1) == 1) {
                    _tokenState |= 1;
                } else {
                    _tokenState |= 2;
                }
                continue;
            }
            if ((_tokenState & 2) != 0) {
                // <--- ChoreographyTask_30065477 New request for tender --->
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 1) != 0) {
                // <--- ChoreographyTask_663F88C0 Purchase product part --->
                if (id == 1 && msg.sender == participants[1]) {
                    _tokenState &= ~uint(1);
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
