// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:35:41.851Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_0d6d63ff_a888_46c1_8a54_c14e911d0d83 {
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
                // Start Event sid-E3FF28E6-444E-4E5D-AA46-3B0F1AA085CA (PC Prob)
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-9BF45F4A-BF50-4B1F-9CA6-A48300FEC94A (Anrufen)
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-9BF45F4A-BF50-4B1F-9CA6-A48300FEC94A (Anrufen)
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-B5FF172E-CBDE-4E4A-9C42-80CC0FA905BA (Gateway lösbar?)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway sid-B5FF172E-CBDE-4E4A-9C42-80CC0FA905BA (lösbar?)
                if (conditions & 1 == 1) {
                    // Condition for sid-2DBED302-6E32-4E45-B184-7EBA65A4445C (Notiz path)
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate sid-5ADAF5B5-2E03-4531-B02C-72D10257157D (Notiz)
                    continue;
                } else {
                    // Default path sid-00BEFE45-F6D4-4EDD-A851-975CEFC38E12 (Problem lösen path)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7 (Problem lösen)
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7 (Problem lösen)
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate End Event sid-B2F12880-2ED3-4343-B64D-447D5E1D6C00
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-5ADAF5B5-2E03-4531-B02C-72D10257157D (Notiz)
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate End Event sid-B2F12880-2ED3-4343-B64D-447D5E1D6C00
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // End Event sid-B2F12880-2ED3-4343-B64D-447D5E1D6C00
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}