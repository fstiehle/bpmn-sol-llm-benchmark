// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:01:36.674Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_7be888e4_d336_4ea1_b34d_c33cc0305a62 {
    uint public tokenState = 1; // Start with the StartEvent active
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
                // StartEvent sid-AF413693-733E-4D05-8760-C9B5AD67D823
                // Auto transition to task 1 (Make travel offer)
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-3E37DF0E-F7CB-458E-814D-3771BB34BE1C (Make travel offer, taskID: 1)
                if (1 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to EventBasedGateway sid-0A2F37FA-DDCD-42EC-8662-ACDC076BC9E8
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // EventBasedGateway sid-0A2F37FA-DDCD-42EC-8662-ACDC076BC9E8
                // Auto transition based on incoming task completion
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Activate task 2 (Reject Offer)
                _tokenState |= 16; // Activate task 3 (Book travel)
                continue;
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-1D096979-7C5F-402C-A905-2F7180C1F4E1 (Reject Offer, taskID: 2)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // Move to EndEvent sid-161F74F1-7BA8-4DA1-864F-E1FDF97AFC4B
                    id = 0;
                    break; // End of process
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-8CF08A36-D3B9-4BF9-B3A3-F97D7619EAAA (Book travel, taskID: 3)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to task 4 (Confirm booking)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-0ADD7839-3AFD-4454-86A1-0C6585433A74 (Confirm booking, taskID: 4)
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to task 5 (Pay travel)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-CEC16AD1-8776-4EE7-8EED-BA50BE39F792 (Pay travel, taskID: 5)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to task 8 (Order ticket)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-29C4DA6B-FE7C-4F58-9E5C-4DE887F9F1FD (Order ticket, taskID: 8)
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to ExclusiveGateway sid-321CCB97-25B8-454A-91EA-5077A81FEDF2
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ExclusiveGateway sid-321CCB97-25B8-454A-91EA-5077A81FEDF2
                _tokenState &= ~uint(256);
                if (conditions & 1 == 1) {
                    _tokenState |= 512; // Move to task 7 (Refuse payment)
                } else {
                    _tokenState |= 1024; // Default path to task 6 (Confirm payment)
                }
                continue;
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask sid-8DF13EBF-DD0D-4B5A-A60C-17AEFCC29464 (Refuse payment, taskID: 7)
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // Move to EndEvent sid-161F74F1-7BA8-4DA1-864F-E1FDF97AFC4B
                    id = 0;
                    break; // End of process
                }
            }
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask sid-BA77ABD3-D153-40B1-89FC-6ED58B05ADDA (Confirm payment, taskID: 6)
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0; // Move to EndEvent sid-161F74F1-7BA8-4DA1-864F-E1FDF97AFC4B
                    id = 0;
                    break; // End of process
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}