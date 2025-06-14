// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:23:46.913Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_85f5fbc7_3837_460c_a212_faa2537a2c4b {
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
                // ChoreographyTask_62144C98 prijavljivanje problema
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask_FE51912A dobijanje detaljnog opisa
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ExclusiveGateway_228C1203
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                }
                continue;
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask_C2D72027 davvanje instrukcija
                if (id == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask_AE5730CF prosledjivanje podrsci
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask_4F9692D5 dostavljanje resenja
                if (id == 5 && msg.sender == participants[9]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
