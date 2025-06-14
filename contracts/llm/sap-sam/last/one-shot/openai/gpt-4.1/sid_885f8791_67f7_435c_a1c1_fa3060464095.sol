// test openai/gpt-4.1 - one-shot at 2025-06-11T23:55:21.417Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_885f8791_67f7_435c_a1c1_fa3060464095 {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // taskID mapping:
    // 1: sid_21C2A13B_9856_4CDC_BC31_34E7F073E8D1 (Slanje problema) -- participants[0]
    // 2: sid_24F4EDD0_56DB_45C9_87A2_315B19CABB82 (Dobijanje detaljnog opisa) -- participants[3]
    // 3: sid_87EECDEB_03C2_4616_A431_BCB2CEB167CB (Slanje resenja) -- participants[5]
    // 4: sid_D5882BC3_50C0_45B2_8D82_355592957A2E (Trazenje resenja) -- participants[6]
    // 5: sid_199F4922_5E06_4997_BC33_ECAD360D3C23 (Slanje resenja) -- participants[9]
    // 6: sid_58B19BA7_610B_4E56_8B71_D22B9E647FA4 (Trazenje resenja) -- participants[10]
    // 7: sid_F5162031_F819_4F09_89B4_31B1696E7694 (slanje resenja) -- participants[13]

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Task 1: Slanje_problema
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // custom code for "Slanje problema" can be added here
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // Task 2: Dobijanje_detaljnog_opisa
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    // custom code for "Dobijanje detaljnog opisa" can be added here
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // Exclusive Gateway: sid_DF5234BE_0D11_41B5_BBE4_7CDAD318FCCD
            // bits: 4
            if (_tokenState & 4 == 4) {
                bool didTransition = false;
                // BA295773_3EBB_4266_B4C2_D6ADE0F93101: conditions & 1 == 1
                if (conditions & 1 == 1) {
                    // to sid_D5882BC3_50C0_45B2_8D82_355592957A2E (task 4)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    didTransition = true;
                }
                if (!didTransition) {
                    // default: EA8315AE_9B2B_481A_BC20_62E8635B693B: to sid_87EECDEB_03C2_4616_A431_BCB2CEB167CB (task 3)
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                }
                continue;
            }
            // Task 4: Trazenje_resenja
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    // custom code for "Trazenje resenja" can be added here
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // Task 3: Slanje_resenja
            if (_tokenState & 16 == 16) {
                if (id == 3 && msg.sender == participants[5]) {
                    // custom code for "Slanje resenja" can be added here
                    _tokenState &= ~uint(16);
                    // End Event
                    _tokenState = 0;
                    break;
                }
            }
            // Exclusive Gateway: sid_AC83CCB8_91BB_415D_BDF2_A3930AD4CEE2
            // bits: 32
            if (_tokenState & 32 == 32) {
                bool didTransition2 = false;
                // 3867AC72_9CAC_4C05_AF6F_D76670F7AD1D: conditions & 2 == 2
                if (conditions & 2 == 2) {
                    // to sid_58B19BA7_610B_4E56_8B71_D22B9E647FA4 (task 6)
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    didTransition2 = true;
                }
                if (!didTransition2) {
                    // default: 05F938A3_712D_4E99_86ED_7A914BD2E13A: to sid_199F4922_5E06_4997_BC33_ECAD360D3C23 (task 5)
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                }
                continue;
            }
            // Task 5: Slanje_resenja
            if (_tokenState & 64 == 64) {
                if (id == 5 && msg.sender == participants[9]) {
                    // custom code for "Slanje resenja" can be added here
                    _tokenState &= ~uint(64);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // Task 6: Trazenje_resenja
            if (_tokenState & 128 == 128) {
                if (id == 6 && msg.sender == participants[10]) {
                    // custom code for "Trazenje resenja" can be added here
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            // Task 7: slanje_resenja
            if (_tokenState & 256 == 256) {
                if (id == 7 && msg.sender == participants[13]) {
                    // custom code for "slanje resenja" can be added here
                    _tokenState &= ~uint(256);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}