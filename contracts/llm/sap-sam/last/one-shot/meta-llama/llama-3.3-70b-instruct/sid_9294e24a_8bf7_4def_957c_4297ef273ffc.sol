// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:59:54.729Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_9294e24a_8bf7_4def_957c_4297ef273ffc {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask_76C63599_3DD6_4043_A2B8_0BB8FBBD2AAF Anfrage verschicken
                if (1 == taskID && msg.sender == participants[0]) {
                    // Custom code for task here
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask_85270B8F_7310_43BE_943A_7C865FF23F69 Angebot erstellen
                if (2 == taskID && msg.sender == participants[2]) {
                    // Custom code for task here
                    _tokenState &= ~uint(2);
                    _tokenState |= 12;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask_E74407BF_FE6F_4217_A9AA_34EF09DD9CCF Änderungswunsch für das Angebot
                if (3 == taskID && msg.sender == participants[4]) {
                    // Custom code for task here
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask_3CAAC027_DED0_416B_A8BB_98D1A0B7239B Angebot ablehnen
                if (4 == taskID && msg.sender == participants[6]) {
                    // Custom code for task here
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask_C019EE0F_1EB1_42AC_98D4_F0710AD56207 Angebot annehmen
                if (5 == taskID && msg.sender == participants[9]) {
                    // Custom code for task here
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask_4D1701E5_F5D9_46C7_BE19_68F0F3CDAF33 Verfügbarkeit abfragen
                if (6 == taskID && msg.sender == participants[10]) {
                    // Custom code for task here
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask_FDECA237_E60D_49F9_BD7F_ED9E9D02AD37 Grafik erstellen lassen
                if (7 == taskID && msg.sender == participants[12]) {
                    // Custom code for task here
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask_30D67DEB_801C_49C7_9CEE_A5B3898418D4 Freigabe einholen
                if (8 == taskID && msg.sender == participants[14]) {
                    // Custom code for task here
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 12 == 12) {
                if (conditions & 1 == 1) {
                    // Auto transition
                    _tokenState &= ~uint(12);
                    _tokenState |= 4;
                    continue;
                } else if (conditions & 2 == 2) {
                    // Auto transition
                    _tokenState &= ~uint(12);
                    _tokenState |= 16;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
