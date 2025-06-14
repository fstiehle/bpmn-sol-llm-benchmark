// test openai/gpt-4.1 - one-shot at 2025-06-12T00:04:50.167Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_aa396907_27b6_40aa_8108_a11754aea97b {
    // Participants mapping indices:
    // 0: sid_C38917DB_D98C_41CD_86FA_CC95F2282245 (klijent)
    // 1: sid_CAC7632B_CC8C_4EDF_9E8C_5F1F1A47DAFD (operater)
    // 2: sid_3EB5D4D0_A7F4_4ABB_9FE5_A6F96A7EAC82 (klijent)
    // 3: sid_8EFCF3AE_4C3E_46FD_98AD_235E8D87EE58 (operater)
    // 4: sid_3611440F_A731_4F7A_96E2_3EC7FDF8A631 (klijent)
    // 5: sid_EBA3189D_C290_425F_A834_AD65FF8501C3 (operater)
    // 6: sid_B263045D_6E83_4B7A_A62B_2CE7D49132EE (operater)
    // 7: sid_B7103CC1_1267_473F_AAF7_E446B914196F (podsrka_I_nivoa)
    // 8: sid_7316E7B2_A248_49B7_84DE_419859D8EE90 (operater)
    // 9: sid_7DB033BE_9A1A_4EBA_A6F4_1FEA579703BA (podrska_I_nivoa)
    // 10: sid_D0AA4455_2873_4204_9ABC_FB33D5D16E30 (podrska_I_nivoa)
    // 11: sid_05C423B9_A62D_4C1F_9697_2DC1AE4D3DEF (podrska_II_nivoa)
    // 12: sid_E76DA9E6_4D28_4F3A_84DF_FE0005F71192 (podrska_I_nivoa)
    // 13: sid_612B0C6F_F5BA_4DF4_ADD0_B419FB2610C0 (podrska_II_nivoa)

    address[14] public participants;
    uint public tokenState = 1;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    /// Task IDs mapping:
    /// 1: sid_5D37CC23_426B_4F2E_8782_083054937AC4 (slanje_problema, initiator: 0)
    /// 2: sid_564CE9B7_7424_442C_BFEC_D117D25F229A (dobijanje_detaljnog_opisa, initiator: 3)
    /// 3: sid_664F8FC2_4AAE_43F8_91F8_4567524590BA (slanje_resenja, initiator: 5)
    /// 4: sid_A3FBF911_AE8D_4C25_A14C_27F8EDEC3915 (trazenje_resenja, initiator: 6)
    /// 5: sid_D9B2FF79_A8A5_4E10_A866_B810A62171C8 (salje_resnje, initiator: 9)
    /// 6: sid_8BF7FEB7_F264_48B3_80BB_075108F3D6D1 (trazenje_resenja, initiator: 10)
    /// 7: sid_AE5C4B6F_9132_4CAA_B63C_8C09457134A3 (slanje_resenja, initiator: 13)

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            // Task 1: slanje_problema (participant 0)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code: slanje_problema --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // Task 2: dobijanje_detaljnog_opisa (participant 3)
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    // <--- custom code: dobijanje_detaljnog_opisa --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // Gateway: sid_4E49CB66_5CF5_4962_A149_7FD9E55A8F0E (operater_zna_da_resi)
            // tokenState bit for this gateway: 4
            if (_tokenState & 4 == 4) {
                // Two outgoing: sid_A0F1CD4C_E0DA_48E8_93FB_8F6028984038 (ne, default), sid_82384041_7F6C_4743_89FE_C4318F220270 (yes, condition)
                bool didTransition = false;
                if (conditions & 1 == 1) {
                    // sid_82384041_7F6C_4743_89FE_C4318F220270
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    didTransition = true;
                    continue;
                }
                if (!didTransition) {
                    // default: sid_A0F1CD4C_E0DA_48E8_93FB_8F6028984038
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            // Task 3: slanje_resenja (participant 5)
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[5]) {
                    // <--- custom code: slanje_resenja --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            // Task 4: trazenje_resenja (participant 6)
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[6]) {
                    // <--- custom code: trazenje_resenja (operater → podsrka_I_nivoa) --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // Gateway: sid_950997B7_A897_4011_841F_128DF26B6871 (podrska_I_nivoa_zna_da_resi)
            // tokenState bit for this gateway: 32
            if (_tokenState & 32 == 32) {
                bool didTransition = false;
                if (conditions & 2 == 2) {
                    // sid_DCC20D3D_2C86_45DE_B9AB_204A7DC5CF95
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    didTransition = true;
                    continue;
                }
                if (!didTransition) {
                    // default: sid_09B6CF37_FE36_445D_89C7_44E6D9F8BBBA
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                }
            }
            // Task 6: trazenje_resenja (participant 10)
            if (_tokenState & 64 == 64) {
                if (id == 6 && msg.sender == participants[10]) {
                    // <--- custom code: trazenje_resenja (podrska_I_nivoa → podrska_II_nivoa) --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            // Task 5: salje_resnje (participant 9)
            if (_tokenState & 128 == 128) {
                if (id == 5 && msg.sender == participants[9]) {
                    // <--- custom code: salje_resnje (podrska_I_nivoa → operater) --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            // Task 7: slanje_resenja (participant 13)
            if (_tokenState & 256 == 256) {
                if (id == 7 && msg.sender == participants[13]) {
                    // <--- custom code: slanje_resenja (podrska_II_nivoa → podrska_I_nivoa) --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            // After sid_D9B2FF79_A8A5_4E10_A866_B810A62171C8 (salje_resnje) (512): sid_F30258AF_384F_4582_AC9B_82DFDA0756FF → sid_664F8FC2_4AAE_43F8_91F8_4567524590BA (slanje_resenja)
            // So after bit 512, auto-activate bit 8 (task 3)
            if (_tokenState & 512 == 512) {
                _tokenState &= ~uint(512);
                _tokenState |= 8;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
