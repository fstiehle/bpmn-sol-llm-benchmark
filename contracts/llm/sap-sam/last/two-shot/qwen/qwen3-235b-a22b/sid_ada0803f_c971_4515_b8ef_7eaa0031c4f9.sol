// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T15:59:11.122Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_ada0803f_c971_4515_b8ef_7eaa0031c4f9 {
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
        while (_tokenState != 0) {
            uint prev = _tokenState;
            // Task sid-3B8BF843-1819-4EAD-AC9C-326E62F85FAB
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // ExclusiveGateway sid-C685C610-E82E-4722-90F5-D0D9B4B176BD
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 4;
                } else {
                    _tokenState |= 8;
                }
                continue;
            }
            // Task sid-AAD29D1E-2C9A-48FC-9E90-DC8F8288DBFA
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    id = 0;
                }
            }
            // Task sid-A7CAE9F1-CB6F-4829-9924-62E33BB5F436
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    id = 0;
                }
            }
            if (prev == _tokenState) {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
