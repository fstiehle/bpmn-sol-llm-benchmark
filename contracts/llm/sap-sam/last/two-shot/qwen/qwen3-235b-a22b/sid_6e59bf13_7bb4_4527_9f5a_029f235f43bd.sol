// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:47:30.148Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_6e59bf13_7bb4_4527_9f5a_029f235f43bd {
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
            uint prev = _tokenState;

            // Task: Prijavljivanje problema (taskID:1)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // Task: Dobijanje detaljnog opisa problema (taskID:2)
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    if (conditions & 1 == 1) {
                        _tokenState |= 4;
                    } else {
                        _tokenState |= 8;
                    }
                    id = 0;
                    continue;
                }
            }

            // Task: Davanje instrukcija za rešavanje problema (taskID:3)
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(4);
                    _tokenState = 0;
                    break;
                }
            }

            // Task: Prosledjivanje problema tehničkoj podršci (taskID:4)
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            // Task: Dostavljanje rešenja problema (taskID:5)
            if (_tokenState & 16 == 16) {
                if (id == 5 && msg.sender == participants[9]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState == prev) {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
