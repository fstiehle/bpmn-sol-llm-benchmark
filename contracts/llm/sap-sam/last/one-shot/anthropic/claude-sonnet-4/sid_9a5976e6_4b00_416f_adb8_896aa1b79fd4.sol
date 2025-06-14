// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:26:30.610Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_9a5976e6_4b00_416f_adb8_896aa1b79fd4 {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;
    
    constructor(address[12] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event - auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Exclusive gateway - check conditions
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // parallel gateway
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // choreography task 1
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 64; // exclusive gateway converging
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Parallel gateway split - activate all outgoing
                _tokenState &= ~uint(8);
                _tokenState |= 16 | 32 | 48; // tasks 2, 3, 4
                continue;
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-0AD897F9-7F7A-4587-95E1-0DE371F53DF5
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128; // to parallel join
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-43AE4A17-8076-4EB5-B60E-93B29A1D6AC8
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // to parallel join
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 48 == 48) {
                // ChoreographyTask sid-73AF27ED-C1B7-4550-960B-49B0B084123B
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(48);
                    _tokenState |= 512; // to parallel join
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 896 == 896) {
                // Parallel gateway join (128 + 256 + 512)
                _tokenState &= ~uint(896);
                _tokenState |= 64; // to exclusive gateway converging
                continue;
            }
            if (_tokenState & 64 == 64) {
                // Exclusive gateway converging - auto transition
                _tokenState &= ~uint(64);
                _tokenState |= 1024; // to choreography task 6
                continue;
            }
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask sid-64FA6A0A-8A78-431A-832D-33E60AF3C869
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // to choreography task 5
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask sid-2414D848-3DBE-43B9-BE5F-7411E200C56C
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // end
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
