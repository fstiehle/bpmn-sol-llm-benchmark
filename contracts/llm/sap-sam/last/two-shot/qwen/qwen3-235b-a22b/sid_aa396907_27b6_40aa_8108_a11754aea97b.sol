// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T15:56:29.457Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_aa396907_27b6_40aa_8108_a11754aea97b {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Task 1: sid-5D37CC23 (slanje problema)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                } else {
                    break;
                }
            }

            // Task 2: sid-564CE9B7 (dobijanje detaljnog opisa)
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    // Process exclusiveGateway sid-4E49CB66
                    if (conditions & 1 == 1) {
                        _tokenState |= 4; // Task3
                    } else {
                        _tokenState |= 8; // Task4
                    }
                    id = 0;
                    continue;
                } else {
                    break;
                }
            }

            // Task3: sid-664F8FC2 (slanje resenja)
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(4);
                    tokenState = 0;
                    break;
                } else {
                    break;
                }
            }

            // Task4: sid-A3FBF911 (trazenje resenja)
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    // Process exclusiveGateway sid-950997B7
                    if (conditions & 2 == 2) {
                        _tokenState |= 32; // Task6
                    } else {
                        _tokenState |= 16; // Task5
                    }
                    id = 0;
                    continue;
                } else {
                    break;
                }
            }

            // Task5: sid-D9B2FF79 (salje resnje)
            if (_tokenState & 16 == 16) {
                if (id == 5 && msg.sender == participants[9]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 4; // Task3
                    id = 0;
                    continue;
                } else {
                    break;
                }
            }

            // Task6: sid-8BF7FEB7 (trazenje resenja)
            if (_tokenState & 32 == 32) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Task7
                    id = 0;
                    continue;
                } else {
                    break;
                }
            }

            // Task7: sid-AE5C4B6F (slanje resenja)
            if (_tokenState & 64 == 64) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    // Process exclusiveGateway sid-950997B7 again
                    if (conditions & 2 == 2) {
                        _tokenState |= 32; // Task6
                    } else {
                        _tokenState |= 16; // Task5
                    }
                    id = 0;
                    continue;
                } else {
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
