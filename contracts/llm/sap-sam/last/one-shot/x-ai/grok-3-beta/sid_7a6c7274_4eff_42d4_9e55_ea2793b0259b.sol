// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:00:32.761Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_7a6c7274_4eff_42d4_9e55_ea2793b0259b {
    uint public tokenState = 1; // Start with the StartEvent active
    address[6] public participants;
    uint public conditions;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent sid-9A0618C4-DA6F-4DA0-AF79-5AAF152DDB8D
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate first task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-318B7DE9-B76B-4BF1-873D-AA8D0B979925 (Antrag verschicken, taskID: 1)
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate exclusive gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ExclusiveGateway sid-1DFF2F64-58F8-4AF0-AE8B-1DCC7B379EF9
                if (conditions & 1 == 1) {
                    // Follow sequenceFlow sid-22A5584F-4C96-4340-BC55-752C4D3DD200 (conditions & 1 == 1)
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate Ablehnen task
                    continue;
                } else {
                    // Follow default sequenceFlow sid-C4D19F37-F2D4-49DD-B202-67C0966FBA5D (Ja)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Annehmen task
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-73CAEE4D-3B51-4B1E-8204-231D4AC0C13B (Annehmen, taskID: 2)
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate EndEvent
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-4700529E-F434-4F38-9D0A-AE6D75F71C17 (Ablehnen, taskID: 3)
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate EndEvent
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // EndEvent sid-ED53A76D-1E5E-4FC8-9C2B-9FC7DF34FF30
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}