// test openai/gpt-4.1 - one-shot at 2025-06-11T23:37:31.840Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_40ff8d9d_66c3_4f7e_a4dd_db25463b18c4 {
    uint public tokenState = 1;
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
            // <--- sid-40BF9CF5-D6A2-4E21-AD06-CDA7C72B12DD Dobijanje_problema --->
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // custom code for Dobijanje_problema
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-5B90747A-45E8-4321-AF21-353B3E5EB0AC Dobijanje_detaljnog_opisa_problema --->
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    // custom code for Dobijanje_detaljnog_opisa_problema
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // <--- ExclusiveGateway sid-6A5D6DBE-6950-4510-AB38-3701BB04ACE8 --->
            if (_tokenState & 4 == 4) {
                bool transitioned = false;
                // condition: conditions & 1 == 1, target: sid-301B4A0F-8429-4E38-9CD1-562D31F2A496 (taskID 4, bit 16)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    transitioned = true;
                    continue;
                }
                // default: sid-2B5B0EB1-CDDE-4904-8D35-A1AEBE009EC1 (taskID 3, bit 8)
                if (!transitioned) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            // <--- sid-2B5B0EB1-CDDE-4904-8D35-A1AEBE009EC1 Objashnjavanje_resenja_problema --->
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[5]) {
                    // custom code for Objashnjavanje_resenja_problema
                    _tokenState &= ~uint(8);
                    // End event, process terminates
                    _tokenState = 0;
                    break;
                }
            }
            // <--- sid-301B4A0F-8429-4E38-9CD1-562D31F2A496 Prosledjivanje_problema_podrsci --->
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[6]) {
                    // custom code for Prosledjivanje_problema_podrsci
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-2C3B7CE5-0AB5-40CA-B685-8C9685F388DD Davanje_resenja_opeateru --->
            if (_tokenState & 32 == 32) {
                if (id == 5 && msg.sender == participants[9]) {
                    // custom code for Davanje_resenja_opeateru
                    _tokenState &= ~uint(32);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}