// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:07:42.441Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_965eceeb_863d_486b_ab19_84fdfd039cbf {
    uint public tokenState = 1; // Start with the start event active
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event sid-18B8DB54-4ADF-476B-9449-1204E9A346A8
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate first task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-479EBA42-73E6-4E4C-AA26-5A282E57E8E2: Ausleihbestellung beantragen
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-3BDBEE51-AB23-41D0-9720-EB6AB0B40207: Buechersendung uebergeben
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-27248DE0-C31D-4ED9-85F2-55B5D89B8F92: Ware abliefern
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-F00A6239-4C5D-447E-B395-88405CDCCF62: Buechersendung zurueckschicken
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-0E2CDEEA-AEAB-455E-AA3E-8EC8D1C1CED3: Ware abliefern
                if (5 == id && msg.sender == participants[8]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to end event
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // End Event sid-25B34B48-7C0F-422B-B90C-B7EFA2C5EDB1
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}