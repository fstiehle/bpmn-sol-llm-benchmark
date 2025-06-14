// test openai/gpt-4.1 - one-shot at 2025-06-12T00:03:34.405Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_a4984eee_ed99_4d91_a6eb_e6e4f30cc6dd {
    uint public tokenState = 1;
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
            // <--- sid-657E8C44-DCCB-449F-8033-52706A33F26A Anfrage bearbeiten --->
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-40E67A20-F07D-4E8C-AE12-1F4FB27B91EF Angebot erstellen --->
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-BBCE9BD4-F5A9-4F01-8166-1DCD3EBE69D4 Buchung durchfuehren --->
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}