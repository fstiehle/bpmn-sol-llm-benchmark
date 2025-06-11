// test x-ai/grok-3-beta - one-shot at 2025-06-11T18:40:14.067Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_06969fe5_fc2b_43e3_bc95_202bb6bac771 {
    uint public tokenState = 1; // Start with the start event bit active
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event to Sharing Files Task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Sharing Files Task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93 - Sharing Files
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Diverging Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // sid-34E7111D-6C2E-4DFC-B4B3-66C2681E12E4 - Diverging Exclusive Gateway
                _tokenState &= ~uint(4);
                if (conditions & 1 == 1) {
                    _tokenState |= 16; // Activate Enriching Information Task
                } else if (conditions & 2 == 2) {
                    _tokenState |= 32; // Direct to Converging Gateway
                } else {
                    _tokenState |= 8; // Default to Rating Information Task
                }
                continue;
            }
            if (_tokenState & 8 == 8) {
                // sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F - Rating Information
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to Converging Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // sid-E53918A0-21BF-446B-B821-F5F45B4E3861 - Enriching Information
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Converging Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // sid-D8020EDC-0BE5-4FE9-8289-5380EE6CEACE - Converging Exclusive Gateway
                _tokenState &= ~uint(32);
                _tokenState |= 64; // Activate Retrieving Information Task
                continue;
            }
            if (_tokenState & 64 == 64) {
                // sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E - Retrieving Information
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0; // End of process
                    break; // Terminate
                }
            }
            break; // Exit loop if no transitions are triggered
        }
        tokenState = _tokenState;
    }
}