// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T16:23:52.278Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_b68958b7_5b3c_4598_8be5_0b2c6b878d70 {
    uint public tokenState = 1 << 0;
    address[18] public participants;
    uint public conditions;

    constructor(address[18] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // TaskID 1 - ChoreographyTask sid-6E7BC75D-207E-4D80-9AE8-CD7A71E4F01A
            if (_tokenState & (1 << 0) != 0) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1 << 0);
                    _tokenState |= uint(1 << 1);
                    id = 0;
                    continue;
                }
            }

            // TaskID 2 - ChoreographyTask sid-EDC95EBB-1DB2-45EB-B9F1-DE20B008C455
            if (_tokenState & (1 << 1) != 0) {
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(1 << 1);
                    _tokenState |= uint(1 << 2);
                    id = 0;
                    continue;
                }
            }

            // ExclusiveGateway sid-6BFA1C27-514B-4C3B-A065-8B951BB1657C
            if (_tokenState & (1 << 2) != 0) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(1 << 2);
                    _tokenState |= uint(1 << 4);
                } else {
                    _tokenState &= ~uint(1 << 2);
                    _tokenState |= uint(1 << 3);
                }
                continue;
            }

            // TaskID 3 - ChoreographyTask sid-25AA23A0-E09A-4708-8B06-8184876E4159
            if (_tokenState & (1 << 3) != 0) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(1 << 3);
                    break;
                }
            }

            // TaskID 4 - ChoreographyTask sid-492CD1C4-81EB-4B4B-B3C1-7BF00708AE5D
            if (_tokenState & (1 << 4) != 0) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(1 << 4);
                    _tokenState |= uint(1 << 6);
                    id = 0;
                    continue;
                }
            }

            // TaskID 5 - ChoreographyTask sid-2D44CA56-2A4B-4959-B2A0-7326289F57BD
            if (_tokenState & (1 << 6) != 0) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(1 << 6);
                    _tokenState |= uint(1 << 5);
                    id = 0;
                    continue;
                }
            }

            // ExclusiveGateway sid-2D954C33-5DAD-4D1D-928B-6B68D081BCEC
            if (_tokenState & (1 << 5) != 0) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(1 << 5);
                    _tokenState |= uint(1 << 8);
                } else {
                    _tokenState &= ~uint(1 << 5);
                    _tokenState |= uint(1 << 7);
                }
                continue;
            }

            // TaskID 6 - ChoreographyTask sid-C0F110DA-170A-4626-816B-1BFAC6FD1E50
            if (_tokenState & (1 << 7) != 0) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(1 << 7);
                    _tokenState |= uint(1 << 9);
                    id = 0;
                    continue;
                }
            }

            // TaskID 7 - ChoreographyTask sid-D8CFBA70-4C1A-4408-94A2-D5DB6A9AEC25
            if (_tokenState & (1 << 8) != 0) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(1 << 8);
                    _tokenState |= uint(1 << 10);
                    id = 0;
                    continue;
                }
            }

            // TaskID 8 - ChoreographyTask sid-350EC8A3-700F-46EC-AC45-0F67663518EC
            if (_tokenState & (1 << 9) != 0) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1 << 9);
                    break;
                }
            }

            // TaskID 9 - ChoreographyTask sid-9A2B984C-85DA-4FDA-A60A-8CDAA4B4F902
            if (_tokenState & (1 << 10) != 0) {
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1 << 10);
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
