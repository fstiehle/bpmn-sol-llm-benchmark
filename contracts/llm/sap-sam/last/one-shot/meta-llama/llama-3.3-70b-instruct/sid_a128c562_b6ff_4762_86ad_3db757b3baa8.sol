// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:07:45.202Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_a128c562_b6ff_4762_86ad_3db757b3baa8 {
    uint public tokenState = 1;
    address[19] public participants;
    uint public conditions;

    constructor(address[19] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask_1vnykqp Überweisung tätigen --->
                if (1 == taskID && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_75BCEE37_9CDA_41D8_B345_83417545D41F Nachhzahlungsaufforderung schicken --->
                if (2 == taskID && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask_6840A80E_8EE7_4A49_9CFE_607B2EED5E87 Überschuss zurückzahlen --->
                if (3 == taskID && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask_1FB6E2A1_8320_4851_B504_8CA4B7AF1ED0 Zahlungseingang bestätigen --->
                if (4 == taskID && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask_13151680_B8EB_4564_B218_B73084FC75E5 Transportkosten bezahlen --->
                if (5 == taskID && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask_5CFB3FE9_33BB_4E8D_91F5_FB684E3F49BC Ware an Logistik-Unternehmen übergeben --->
                if (6 == taskID && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask_F731B3E3_C364_47B2_85EE_F14FE149D7B1 Ware liefern --->
                if (7 == taskID && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask_5FD69B90_2FAE_4AF1_A36E_3C5F70447C40 Wareneingang bestätigen --->
                if (8 == taskID && msg.sender == participants[14]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- ChoreographyTask_0C00E59F_E01E_45F3_A8DD_E10A61D2884F Überweisung an den Verkäufer tätigen --->
                if (9 == taskID && msg.sender == participants[17]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
                if (conditions & 2 == 2) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 256;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
