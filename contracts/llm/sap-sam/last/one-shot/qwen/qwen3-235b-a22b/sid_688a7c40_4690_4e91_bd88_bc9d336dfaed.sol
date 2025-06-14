// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:53:33.466Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_688a7c40_4690_4e91_bd88_bc9d336dfaed {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // choreographyTask_679D0305-B6E0-4E58-90A7-65F71C959523 id:1
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 2 == 2) {
                // choreographyTask_FD70D51F-BA7F-40A9-9154-9DDC364BAC6D id:2
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    if (conditions & 1 == 1) {
                        _tokenState |= 8;
                    } else {
                        _tokenState |= 4;
                    }
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 4 == 4) {
                // choreographyTask_F5EA1FDA-6D80-4211-A079-D014E4C6DAD5 id:3
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    break;
                }
            }

            if (_tokenState & 8 == 8) {
                // choreographyTask_164C9B7A-A1E4-49FA-BD80-474895E787BF id:4
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 16 == 16) {
                // choreographyTask_528263A0-769D-4C63-AD6C-BE72456E0888 id:5
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 32 == 32) {
                // choreographyTask_7AD65D28-6CA5-43C1-8B36-BBB39A620E5A id:6
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                // choreographyTask_E60887BF-A736-4531-926C-C6316CBC1A10 id:7
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 128 == 128) {
                // choreographyTask_72D3C0FD-9775-4B90-BCB8-A816D0043095 id:8
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
