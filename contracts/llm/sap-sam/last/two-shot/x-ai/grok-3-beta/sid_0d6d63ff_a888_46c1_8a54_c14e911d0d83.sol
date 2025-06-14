// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:18:48.803Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_0d6d63ff_a888_46c1_8a54_c14e911d0d83 {
    uint public tokenState = 1; // Start with the start event active
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
                // <--- sid-9BF45F4A-BF50-4B1F-9CA6-A48300FEC94A Anrufen --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to gateway sid-B5FF172E-CBDE-4E4A-9C42-80CC0FA905BA
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7 Problem loesen --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 0; // End event reached
                    break; // is end
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-5ADAF5B5-2E03-4531-B02C-72D10257157D Notiz --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End event reached
                    break; // is end
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-B5FF172E-CBDE-4E4A-9C42-80CC0FA905BA loesbar? --->
                if (conditions & 1 == 1) {
                    // Follow conditional sequence flow sid-2DBED302-6E32-4E45-B184-7EBA65A4445C
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // Activate sid-5ADAF5B5-2E03-4531-B02C-72D10257157D Notiz
                    continue;
                } else {
                    // Follow default sequence flow sid-00BEFE45-F6D4-4EDD-A851-975CEFC38E12
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7 Problem loesen
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}