// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:59:42.687Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_72d6d5f6_e1bd_405d_a230_0fa6c54b6319 {
    uint public tokenState = 1; // Start with the StartEvent active
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
            // Start Event to Exclusive Gateway (sid-914D89A4-148F-4085-B62D-2D1FBCFD66B1)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Exclusive Gateway
                continue;
            }

            // Exclusive Gateway Diverging (sid-914D89A4-148F-4085-B62D-2D1FBCFD66B1)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 4; // Task B (sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6)
                } else if (conditions & 2 == 2) {
                    _tokenState |= 8; // Parallel Gateway Diverging (sid-6B496623-43BB-4F3F-B00E-878B7187A1D3)
                } else {
                    _tokenState |= 16; // Default path to Task A (sid-87BBD4F0-2401-4A17-803C-8B904256971A)
                }
                continue;
            }

            // Task A (sid-87BBD4F0-2401-4A17-803C-8B904256971A, TaskID: 1)
            if (_tokenState & 16 == 16) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Exclusive Gateway Converging (sid-875E037A-C651-4762-A161-257334AEAFA7)
                    id = 0;
                    continue;
                }
            }

            // Task B (sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6, TaskID: 2)
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32; // Move to Exclusive Gateway Converging (sid-875E037A-C651-4762-A161-257334AEAFA7)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Diverging (sid-6B496623-43BB-4F3F-B00E-878B7187A1D3)
            if (_tokenState & 8 == 8) {
                _tokenState &= ~uint(8);
                _tokenState |= 64; // Activate Task A (sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B)
                _tokenState |= 128; // Activate Task B (sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E)
                continue;
            }

            // Task A (sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B, TaskID: 3)
            if (_tokenState & 64 == 64) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to Parallel Gateway Converging (sid-6B0874A1-FB91-4F84-A743-877EDA5CEBA7)
                    id = 0;
                    continue;
                }
            }

            // Task B (sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E, TaskID: 4)
            if (_tokenState & 128 == 128) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Move to Parallel Gateway Converging (sid-6B0874A1-FB91-4F84-A743-877EDA5CEBA7)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Converging (sid-6B0874A1-FB91-4F84-A743-877EDA5CEBA7)
            if (_tokenState & 768 == 768) { // Wait for both incoming tokens (256 + 512)
                _tokenState &= ~uint(768);
                _tokenState |= 32; // Move to Exclusive Gateway Converging (sid-875E037A-C651-4762-A161-257334AEAFA7)
                continue;
            }

            // Exclusive Gateway Converging (sid-875E037A-C651-4762-A161-257334AEAFA7)
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 0; // End process
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}