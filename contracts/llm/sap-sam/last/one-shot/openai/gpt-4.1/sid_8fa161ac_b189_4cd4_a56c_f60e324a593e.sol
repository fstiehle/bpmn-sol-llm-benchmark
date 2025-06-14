// test openai/gpt-4.1 - one-shot at 2025-06-11T23:57:06.712Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_8fa161ac_b189_4cd4_a56c_f60e324a593e {
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
    // 1: sid_DC738A66_7525_4C02_99D0_E48FC804756A (slanje problema) - initiator: 0
    // 2: sid_34874B10_2120_4641_85D3_7DA5014FE9FD (opisivanje problema) - initiator: 3
    // 3: sid_49E97E55_D6C3_4E09_879F_677795D88F23 (slanje resenja) - initiator: 5
    // 4: sid_EB288683_8547_4DA6_BDC0_A1AE5A38734D (konsultovanje PPN) - initiator: 6
    // 5: sid_598E252E_B2A2_40AA_AB49_CD70F467EF44 (slanje  resenja) - initiator: 9
    // 6: sid_556F6605_D15D_4916_BBF5_006F8307FA38 (slanje opisa problema) - initiator: 10
    // 7: sid_45AEC8AE_290B_4570_B253_51A903050093 (slanje resenja i objasnjenja) - initiator: 13

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {

            // sid_DC738A66_7525_4C02_99D0_E48FC804756A (slanje problema)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- slanje_problema --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // sid_34874B10_2120_4641_85D3_7DA5014FE9FD (opisivanje problema)
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    // <--- opisivanje_problema --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            // ExclusiveGateway sid_434BA095_2193_4B16_9326_08C37AF51696 (zna da resi problem?)
            if (_tokenState & 4 == 4) {
                // Two outgoing: sid_8A6F257D_CE1F_4B15_82CD_AB4DD06200C2 ([NE]) and sid_0CABC21D_9F55_4DF7_8084_79A1022BACE1 (conditions & 1 == 1)
                // default is sid_8A6F257D_CE1F_4B15_82CD_AB4DD06200C2 ([NE]) => sid_EB288683_8547_4DA6_BDC0_A1AE5A38734D
                // conditional is sid_0CABC21D_9F55_4DF7_8084_79A1022BACE1 (conditions & 1 == 1) => sid_2646D70F_DA7D_4716_9A85_445B4BCE7179
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32; // sid_2646D70F_DA7D_4716_9A85_445B4BCE7179
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // sid_EB288683_8547_4DA6_BDC0_A1AE5A38734D
                    continue;
                }
            }

            // sid_EB288683_8547_4DA6_BDC0_A1AE5A38734D (konsultovanje PPN)
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    // <--- konsultovanje_PPN --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            // ExclusiveGateway sid_C89B3DFB_38A4_4171_8A9B_C3629916A230 (zna da resi problem?)
            if (_tokenState & 16 == 16) {
                // Outgoing: sid_B32B4D08_5943_4187_92E7_BADCB381595C ([DA]) => sid_4359BAC5_CC2E_4DCD_894B_42629D9ADBEA
                //           sid_B9F7A7F0_B25C_4DCF_BE4B_B33B50841655 (conditions & 2 == 2) => sid_556F6605_D15D_4916_BBF5_006F8307FA38
                // default is sid_B32B4D08_5943_4187_92E7_BADCB381595C
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // sid_556F6605_D15D_4916_BBF5_006F8307FA38
                    continue;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128; // sid_4359BAC5_CC2E_4DCD_894B_42629D9ADBEA
                    continue;
                }
            }

            // sid_556F6605_D15D_4916_BBF5_006F8307FA38 (slanje opisa problema)
            if (_tokenState & 64 == 64) {
                if (id == 6 && msg.sender == participants[10]) {
                    // <--- slanje_opisa_problema --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            // sid_45AEC8AE_290B_4570_B253_51A903050093 (slanje resenja i objasnjenja)
            if (_tokenState & 256 == 256) {
                if (id == 7 && msg.sender == participants[13]) {
                    // <--- slanje_resenja_i_objasnjenja --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway sid_4359BAC5_CC2E_4DCD_894B_42629D9ADBEA
            // Incoming: sid_B32B4D08_5943_4187_92E7_BADCB381595C (from sid_C89B3DFB_38A4_4171_8A9B_C3629916A230)
            //           sid_72227F32_D624_4241_BC98_C9C683418D0F (from sid_45AEC8AE_290B_4570_B253_51A903050093)
            // Outgoing: sid_28CA4791_508B_4D63_8A57_2A78FE89F206 -> sid_598E252E_B2A2_40AA_AB49_CD70F467EF44
            // This is an OR-join for this choreography (activates if any incoming path is taken).
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                _tokenState |= 1024; // sid_598E252E_B2A2_40AA_AB49_CD70F467EF44
                continue;
            }
            if (_tokenState & 512 == 512) {
                _tokenState &= ~uint(512);
                _tokenState |= 1024; // sid_598E252E_B2A2_40AA_AB49_CD70F467EF44
                continue;
            }

            // sid_598E252E_B2A2_40AA_AB49_CD70F467EF44 (slanje  resenja)
            if (_tokenState & 1024 == 1024) {
                if (id == 5 && msg.sender == participants[9]) {
                    // <--- slanje_resenja --->
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // sid_2646D70F_DA7D_4716_9A85_445B4BCE7179
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway sid_2646D70F_DA7D_4716_9A85_445B4BCE7179
            // Incoming: sid_0CABC21D_9F55_4DF7_8084_79A1022BACE1 (from sid_434BA095_2193_4B16_9326_08C37AF51696)
            //           sid_AB9BEBE4_E83D_480F_8F7F_24EAB84F7717 (from sid_598E252E_B2A2_40AA_AB49_CD70F467EF44)
            // Outgoing: sid_2B83C0F9_29A3_4960_BF6C_87ADAE4B32E7 -> sid_49E97E55_D6C3_4E09_879F_677795D88F23
            // This is an OR-join for this choreography (activates if any incoming path is taken).
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 2048; // sid_2646D70F_DA7D_4716_9A85_445B4BCE7179
                continue;
            }
            if (_tokenState & 2048 == 2048) {
                _tokenState &= ~uint(2048);
                _tokenState |= 4096; // sid_49E97E55_D6C3_4E09_879F_677795D88F23
                continue;
            }

            // sid_49E97E55_D6C3_4E09_879F_677795D88F23 (slanje resenja)
            if (_tokenState & 4096 == 4096) {
                if (id == 3 && msg.sender == participants[5]) {
                    // <--- slanje_resenja --->
                    _tokenState &= ~uint(4096);
                    // End event reached, terminate the process
                    _tokenState = 0;
                    break;
                }
            }

            break; // No matching active tokens, break loop
        }
        tokenState = _tokenState;
    }
}