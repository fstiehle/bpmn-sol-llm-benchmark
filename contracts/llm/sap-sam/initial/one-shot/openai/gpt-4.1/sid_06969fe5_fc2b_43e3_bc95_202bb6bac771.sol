// test openai/gpt-4.1 - one-shot at 2025-06-11T18:33:03.820Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_06969fe5_fc2b_43e3_bc95_202bb6bac771 {
    uint public tokenState = 1;
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
            // ChoreographyTask: sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93 (Sharing files)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code for Sharing files here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // ChoreographyTask: sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F (Ratinginformation)
            if (_tokenState & 8 == 8) {
                if (id == 2 && msg.sender == participants[2]) {
                    // <--- custom code for Ratinginformation here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            // ChoreographyTask: sid-E53918A0-21BF-446B-B821-F5F45B4E3861 (Enriching information)
            if (_tokenState & 16 == 16) {
                if (id == 3 && msg.sender == participants[4]) {
                    // <--- custom code for Enriching information here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            // ChoreographyTask: sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E (Retrieving information)
            if (_tokenState & 64 == 64) {
                if (id == 4 && msg.sender == participants[6]) {
                    // <--- custom code for Retrieving information here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 0;
                    break;
                }
            }
            // ExclusiveGateway: sid-34E7111D-6C2E-4DFC-B4B3-66C2681E12E4
            // tokenState bit for this gateway: 2
            if (_tokenState & 2 == 2) {
                bool transitioned = false;
                if (conditions & 1 == 1) {
                    // <--- conditions & 1 == 1 --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 16;
                    transitioned = true;
                    continue;
                }
                if (conditions & 2 == 2) {
                    // <--- conditions & 2 == 2 --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 64;
                    transitioned = true;
                    continue;
                }
                // default: sid-28A796C7-171A-4A42-BB02-A4C63E534FCD -> sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F (task 2)
                if (!transitioned) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            // ExclusiveGateway: sid-D8020EDC-0BE5-4FE9-8289-5380EE6CEACE
            // tokenState bit for this gateway: 64
            // Already handled by tasks flowing into it (since all paths OR into 64)
            break;
        }
        tokenState = _tokenState;
    }
}