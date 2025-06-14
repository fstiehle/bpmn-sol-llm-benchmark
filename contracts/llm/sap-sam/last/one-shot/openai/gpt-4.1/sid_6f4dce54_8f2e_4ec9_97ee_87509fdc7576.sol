// test openai/gpt-4.1 - one-shot at 2025-06-11T23:48:13.414Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_6f4dce54_8f2e_4ec9_97ee_87509fdc7576 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    /// Mapping of taskID to choreography task:
    /// 1: sid_BE0DD976_22AE_4BE7_8028_8BECA9607D1B (order trip), initiator: participants[0]
    /// 2: sid_AFF2D2C4_C3B7_4301_9215_D181ED9D0E69 (search flights), initiator: participants[2]
    /// 3: sid_2A684B07_006B_48C5_8F55_B6F0A3D96C0E (flights result), initiator: participants[4]
    /// 4: sid_D32DEB2A_79BC_4C3B_BAF0_1962CC4DED9A (trip result), initiator: participants[6]

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            // ---- sid_BE0DD976_22AE_4BE7_8028_8BECA9607D1B (order trip) ----
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // custom code for 'order trip'
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // ---- sid_AFF2D2C4_C3B7_4301_9215_D181ED9D0E69 (search flights) ----
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    // custom code for 'search flights'
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // ---- sid_2A684B07_006B_48C5_8F55_B6F0A3D96C0E (flights result) ----
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    // custom code for 'flights result'
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            // ---- sid_D32DEB2A_79BC_4C3B_BAF0_1962CC4DED9A (trip result) ----
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    // custom code for 'trip result'
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End event reached
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}