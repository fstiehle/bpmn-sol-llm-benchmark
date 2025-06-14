// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:39:51.418Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_72d6d5f6_e1bd_405d_a230_0fa6c54b6319 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;
    
    constructor(address[8] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 2 == 2) {
                // <--- sid-87BBD4F0-2401-4A17-803C-8B904256971A Task A --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6 Task B --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B Task A --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E Task B --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1 == 1) {
                // <--- Start Event to Exclusive Gateway sid-914D89A4-148F-4085-B62D-2D1FBCFD66B1 --->
                _tokenState &= ~uint(1);
                if (conditions & 1 == 1) {
                    _tokenState |= 4; // Path to Task B (sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6)
                } else if (conditions & 2 == 2) {
                    _tokenState |= 256; // Path to Parallel Gateway (sid-6B496623-43BB-4F3F-B00E-878B7187A1D3)
                } else {
                    _tokenState |= 2; // Default path to Task A (sid-87BBD4F0-2401-4A17-803C-8B904256971A)
                }
                continue;
            }
            if (_tokenState & 256 == 256) {
                // <--- Parallel Gateway Diverging sid-6B496623-43BB-4F3F-B00E-878B7187A1D3 --->
                _tokenState &= ~uint(256);
                _tokenState |= 8; // Activate Task A (sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B)
                _tokenState |= 64; // Activate Task B (sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E)
                continue;
            }
            if (_tokenState & 160 == 160) {
                // <--- Parallel Gateway Converging sid-6B0874A1-FB91-4F84-A743-877EDA5CEBA7 --->
                _tokenState &= ~uint(160);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 16 == 16) {
                // <--- Exclusive Gateway Converging sid-875E037A-C651-4762-A161-257334AEAFA7 --->
                _tokenState &= ~uint(16);
                _tokenState |= 0; // End of process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}