// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:58:04.373Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_72d6d5f6_e1bd_405d_a230_0fa6c54b6319 {
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event -> exclusive gateway
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Exclusive gateway diverging
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // Task B
                    continue;
                }
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 16; // Parallel gateway diverging
                    continue;
                }
                // Default path
                _tokenState &= ~uint(2);
                _tokenState |= 4; // Task A
                continue;
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask A (sid-87BBD4F0-2401-4A17-803C-8B904256971A)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32; // To converging gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask B (sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // To converging gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Parallel gateway diverging
                _tokenState &= ~uint(16);
                _tokenState |= 64 | 128; // Both parallel tasks
                continue;
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask A (sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // To parallel converging
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask B (sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // To parallel converging
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 768 == 768) {
                // Parallel gateway converging (256 + 512)
                _tokenState &= ~uint(768);
                _tokenState |= 32; // To exclusive converging
                continue;
            }
            if (_tokenState & 32 == 32) {
                // Exclusive gateway converging -> end
                _tokenState &= ~uint(32);
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
