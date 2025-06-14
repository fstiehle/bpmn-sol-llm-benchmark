// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:06:24.722Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_9164daa8_a74a_47bc_9858_a563964b72f4 {
    uint public tokenState = 1; // Start with the StartEvent active
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
        while (_tokenState != 0) {
            // StartEvent (sid-A060EF4A-D8C6-4A2E-80E0-5F8909C05146) -> Make Travel Offer
            if (_tokenState & 1 == 1) {
                // Auto transition from StartEvent to Make Travel Offer
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Make Travel Offer task
                continue;
            }

            // Make Travel Offer (sid-4FCF24A6-4656-4A6D-8054-DB86A47FB3B2)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // Travel Agency
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Exclusive Gateway
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway (sid-698D8508-7F6C-4157-B0FC-26DBE9BB687F)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // Condition satisfied, follow the conditional path to End Event (Offer Cancelled)
                    _tokenState &= ~uint(4);
                    _tokenState |= 0; // Terminate process
                    break;
                } else {
                    // Default path to Pay Travel
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Pay Travel task
                    continue;
                }
            }

            // Pay Travel (sid-987596C8-0360-48D1-B7FB-3FA7C918F9D8)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) { // Customer
                    // Custom code for task here if needed
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Confirm Booking task
                    id = 0;
                    continue;
                }
            }

            // Confirm Booking (sid-940E58E2-0B8F-4B9C-B8D0-57D05311B214)
            if (_tokenState & 16 == 16) {
                if (4 == id && msg.sender == participants[6]) { // Travel Agency
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate Pay Travel task (second instance)
                    id = 0;
                    continue;
                }
            }

            // Pay Travel (sid-992E91E4-762C-4B6A-80E0-A9815A8D4187)
            if (_tokenState & 32 == 32) {
                if (5 == id && msg.sender == participants[8]) { // Customer
                    // Custom code for task here if needed
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate Order Ticket task
                    id = 0;
                    continue;
                }
            }

            // Order Ticket (sid-D6E8927B-7D26-44EA-9EF6-19D3C86821B1)
            if (_tokenState & 64 == 64) {
                if (3 == id && msg.sender == participants[4]) { // Travel Agency
                    // Custom code for task here if needed
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Confirm Payment task
                    id = 0;
                    continue;
                }
            }

            // Confirm Payment (sid-5C61019F-F503-4448-A4DB-0AF73B07D301)
            if (_tokenState & 128 == 128) {
                if (6 == id && msg.sender == participants[10]) { // Airline
                    // Custom code for task here if needed
                    _tokenState &= ~uint(128);
                    _tokenState |= 0; // Terminate process (End Event)
                    break;
                }
            }

            break; // Exit loop if no further transitions are triggered
        }
        tokenState = _tokenState;
    }
}