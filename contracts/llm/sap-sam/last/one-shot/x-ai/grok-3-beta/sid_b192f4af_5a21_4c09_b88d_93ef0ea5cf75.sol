// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:15:24.462Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_b192f4af_5a21_4c09_b88d_93ef0ea5cf75 {
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
                // StartEvent (sid-23CB4A1A-7D25-4873-8E03-6E7722B9FB9D)
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-F4C29B8C-A023-4B13-94B5-CA7D86B750D0
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask (sid-F4C29B8C-A023-4B13-94B5-CA7D86B750D0) - Urlaubsantrag verschicken
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Exclusive Gateway (sid-5F82763E-0757-4DF2-84EC-A69E8AF996AE)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway (sid-5F82763E-0757-4DF2-84EC-A69E8AF996AE)
                if (conditions & 1 == 1) {
                    // Condition satisfied for sid-D24A3878-EF15-48E6-B229-01CE4BE05FA1
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate sid-89267EA4-E7DF-4BCE-A0E4-E2E12C60670F
                    continue;
                } else {
                    // Default path (sid-922C1C6E-75BF-4418-8E93-691D6582BE93)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-A3A60CC3-879E-4AC6-97E6-B78183765622
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask (sid-A3A60CC3-879E-4AC6-97E6-B78183765622) - bekommt Urlaub
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate EndEvent (sid-2C4B81C7-4AB1-4DB7-976B-C8593F45DACD)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask (sid-89267EA4-E7DF-4BCE-A0E4-E2E12C60670F) - wird informiert, dass kein Urlaub
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate EndEvent (sid-2C4B81C7-4AB1-4DB7-976B-C8593F45DACD)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // EndEvent (sid-2C4B81C7-4AB1-4DB7-976B-C8593F45DACD)
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}