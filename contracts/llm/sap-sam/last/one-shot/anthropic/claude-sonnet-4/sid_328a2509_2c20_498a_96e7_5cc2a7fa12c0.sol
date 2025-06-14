// test anthropic/claude-sonnet-4 - one-shot at 2025-06-14T00:26:21.554Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_328a2509_2c20_498a_96e7_5cc2a7fa12c0 {
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
                // Start event - auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // Event based gateway - auto transition to both paths
                _tokenState &= ~uint(2);
                _tokenState |= 12; // activate both task paths
                continue;
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-4DB685DD-6383-42A3-8D06-0AB4D69F921C Skasowanie wizyty
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-9A69B876-7737-4E82-9EAF-4023E127749C Skasowanie wizyty
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16 == 16) {
                // Exclusive gateway convergence - auto transition
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            
            if (_tokenState & 32 == 32) {
                // Parallel gateway divergence - auto transition to both paths
                _tokenState &= ~uint(32);
                _tokenState |= 192; // activate both parallel tasks
                continue;
            }
            
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-CD8932F0-FA63-4338-B81E-2E2B4D6E149F Dokonanie skasowania wizyty
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-E40BD334-AFF4-43A2-9144-B49F16663E03 Dokonanie skasowania wizyty
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 256 == 256) {
                // End event - process complete
                _tokenState = 0;
                break;
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
