// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:39:26.180Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_2258986a_c790_4708_ae4e_8dc02b7d122d {
    uint public tokenState = 1; // Start with initial token at start event
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
                // Start Event to Task 1 (sid-5003F6B4-8FBE-4A33-981F-AE7EC993A202)
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1 bit
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-5003F6B4-8FBE-4A33-981F-AE7EC993A202 (Schickt Antragsformular ab)
                if (1 == id && msg.sender == participants[0]) {
                    // Task executed by Kunde (initiating participant)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Gateway bit
                    id = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway sid-5B93C6E1-A3E2-44F3-B88A-9ED8EDC7B13A
                if (conditions & 1 == 1) {
                    // Condition satisfied for Zustimmung path
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Task 3 bit (sid-CAB5DD5D-BE94-4F7E-A643-81D13F16131A)
                    continue;
                } else {
                    // Default path (Ablehnung)
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate Task 2 bit (sid-F85E2B91-4489-4968-B5B6-8D84011DDA42)
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-CAB5DD5D-BE94-4F7E-A643-81D13F16131A (Informieren ueber Zustimmung)
                if (3 == id && msg.sender == participants[4]) {
                    // Task executed by Unternehmen (initiating participant)
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to End Event bit
                    id = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-F85E2B91-4489-4968-B5B6-8D84011DDA42 (Informieren ueber Ablehnung)
                if (2 == id && msg.sender == participants[2]) {
                    // Task executed by Unternehmen (initiating participant)
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to End Event bit
                    id = 0; // Prevent loops
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // End Event sid-AC9FDF8C-30E9-47EE-93D2-28832ABAFF32
                _tokenState = 0; // Terminate process
                break;
            }
            break; // Exit loop if no conditions are met
        }
        tokenState = _tokenState;
    }
}