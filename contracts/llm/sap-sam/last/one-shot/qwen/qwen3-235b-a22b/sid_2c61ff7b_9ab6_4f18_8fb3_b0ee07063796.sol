// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T22:13:04.878Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_2c61ff7b_9ab6_4f18_8fb3_b0ee07063796 {
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
            // Task1: Hotline-Nummer anrufen
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[1]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // Task2: Problem lösen
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // ExclusiveGateway
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            // Task3: Problem gelöst
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    break;
                }
            }
            // Task4: Problem lösen
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // Task5: Dauer und Kosten notieren
            if (_tokenState & 32 == 32) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
