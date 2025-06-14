// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:56:03.934Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_6464baf1_e9c8_4917_8881_c3036e949acd {
    uint public tokenState = 1; // Start with the bit for the start event
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
                // Start Event: Need for accommodation
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Request Reservation
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask: Request Reservation (sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9, taskID: 1)
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Inform Host
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask: Inform Host (sid-5E7F8B9A-D08B-4075-A5AA-334D33017824, taskID: 2)
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Accept Reservation
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask: Accept Reservation (sid-14F93670-7F19-4E8D-985B-652CC65D24D6, taskID: 3)
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate End Event
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // End Event: Reservation accepted
                _tokenState &= ~uint(16);
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}