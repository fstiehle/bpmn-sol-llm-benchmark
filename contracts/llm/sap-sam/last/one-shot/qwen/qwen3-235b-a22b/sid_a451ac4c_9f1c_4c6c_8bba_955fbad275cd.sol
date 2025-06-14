// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:02:51.217Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_a451ac4c_9f1c_4c6c_8bba_955fbad275cd {
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
                // ChoreographyTask_108E4ABE Ware reklamieren
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask_813DE3BA Retour Etikett erstellen
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask_EEE1B15D Ware abschicken
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ExclusiveGateway FCC2BF6C
                if ((conditions & 1) == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask_429BDAF2 Geld zuruck
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask_FB127610 Ware zuruck
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
