// test openai/gpt-4.1 - one-shot at 2025-06-11T23:37:13.955Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_3e540bea_9ea2_4ddb_8cd0_a0b78c942efa {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    /// taskID mapping:
    /// 1: sid_36C0040E_7810_4DE4_BB7B_C312FB7C51F0 (Klijent ima problem), initiator: 0
    /// 2: sid_663EA2D1_A326_4D98_A4DE_2D130817DE4D (Detaljnije opisivanje problema), initiator: 3
    /// 3: sid_EBC1C952_4F4E_4F3B_A435_993EC8C7A873 (Objasnjavanje resenja), initiator: 5
    /// 4: sid_BD677F30_8130_47F2_8E95_1D4769FB1F47 (Pitanje podrske prvog nivoa), initiator: 6
    /// 5: sid_415D7F49_1116_4014_9313_6F5CF696EF08 (Objasnjavanje resera operateru), initiator: 9
    /// 6: sid_CCF9A421_42C3_43D0_A441_374253CCCA89 (Pitanje podrske drugog nivoa), initiator: 10
    /// 7: sid_2173A2F1_5CB3_47EE_8C89_BFCF203F248A (Objasnjavanje resenja podrsci prvog nivoa), initiator: 13

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // sid_36C0040E_7810_4DE4_BB7B_C312FB7C51F0: Klijent ima problem
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code for Klijent ima problem --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // sid_663EA2D1_A326_4D98_A4DE_2D130817DE4D: Detaljnije opisivanje problema
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[3]) {
                    // <--- custom code for Detaljnije opisivanje problema --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // Gateway sid_CB3A6E8D_2ED0_45DB_AB9A_F2D0E9927521
            if (_tokenState & 4 == 4) {
                bool matched = false;
                // SequenceFlow sid_3B6721C5_89D1_42BC_9CB0_548C8CC260E7 ("da") (no condition): to sid_B8FF6893_4145_438B_8A05_E5CD223E62FE
                // SequenceFlow sid_DFDA9782_1A96_4262_B82A_CE855B16A735 (conditions & 1 == 1): to sid_BD677F30_8130_47F2_8E95_1D4769FB1F47
                if (conditions & 1 == 1) {
                    // to sid_BD677F30_8130_47F2_8E95_1D4769FB1F47
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    matched = true;
                    continue;
                }
                if (!matched) {
                    // default: sid_3B6721C5_89D1_42BC_9CB0_548C8CC260E7: to sid_B8FF6893_4145_438B_8A05_E5CD223E62FE
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            // sid_BD677F30_8130_47F2_8E95_1D4769FB1F47: Pitanje podrske prvog nivoa
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    // <--- custom code for Pitanje podrske prvog nivoa --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // Gateway sid_C45A5040_1C56_4BFE_8A80_708F6D3EC2A3
            if (_tokenState & 32 == 32) {
                bool matched = false;
                // SequenceFlow sid_0A307148_E817_4D0C_822B_FCA222EF2983 ("ne") (no condition): to sid_CCF9A421_42C3_43D0_A441_374253CCCA89
                // SequenceFlow sid_A6A4EEC1_BEA1_4726_845C_A9FCD6A5BE4F (conditions & 2 == 2): to sid_006249D0_5879_424A_B9A4_B9F0A079E4E7
                if (conditions & 2 == 2) {
                    // to sid_006249D0_5879_424A_B9A4_B9F0A079E4E7
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    matched = true;
                    continue;
                }
                if (!matched) {
                    // default: sid_0A307148_E817_4D0C_822B_FCA222EF2983: to sid_CCF9A421_42C3_43D0_A441_374253CCCA89
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                }
            }
            // sid_CCF9A421_42C3_43D0_A441_374253CCCA89: Pitanje podrske drugog nivoa
            if (_tokenState & 128 == 128) {
                if (id == 6 && msg.sender == participants[10]) {
                    // <--- custom code for Pitanje podrske drugog nivoa --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            // sid_2173A2F1_5CB3_47EE_8C89_BFCF203F248A: Objasnjavanje resenja podrsci prvog nivoa
            if (_tokenState & 256 == 256) {
                if (id == 7 && msg.sender == participants[13]) {
                    // <--- custom code for Objasnjavanje resenja podrsci prvog nivoa --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            // Gateway sid_006249D0_5879_424A_B9A4_B9F0A079E4E7 (Converging)
            if (_tokenState & 64 == 64) {
                // Two incoming: from sid_2173A2F1_5CB3_47EE_8C89_BFCF203F248A (256), and from sid_C45A5040_1C56_4BFE_8A80_708F6D3EC2A3 (32) via conditions
                // After either path, continue to sid_415D7F49_1116_4014_9313_6F5CF696EF08
                _tokenState &= ~uint(64);
                _tokenState |= 512;
                continue;
            }
            // sid_415D7F49_1116_4014_9313_6F5CF696EF08: Objasnjavanje resera operateru
            if (_tokenState & 512 == 512) {
                if (id == 5 && msg.sender == participants[9]) {
                    // <--- custom code for Objasnjavanje resera operateru --->
                    _tokenState &= ~uint(512);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // Gateway sid_B8FF6893_4145_438B_8A05_E5CD223E62FE (Converging)
            if (_tokenState & 16 == 16) {
                // Two incoming: from sid_CB3A6E8D_2ED0_45DB_AB9A_F2D0E9927521 (default) and from sid_415D7F49_1116_4014_9313_6F5CF696EF08
                // After either path, continue to sid_EBC1C952_4F4E_4F3B_A435_993EC8C7A873
                _tokenState &= ~uint(16);
                _tokenState |= 1024;
                continue;
            }
            // sid_EBC1C952_4F4E_4F3B_A435_993EC8C7A873: Objasnjavanje resenja
            if (_tokenState & 1024 == 1024) {
                if (id == 3 && msg.sender == participants[5]) {
                    // <--- custom code for Objasnjavanje resenja --->
                    _tokenState &= ~uint(1024);
                    // End event: sid_69807CDD_58EA_45A0_8FFD_58A4EF185A68
                    _tokenState = 0;
                    break;
                }
            }

            // No valid progress, break to avoid infinite loop
            break;
        }
        tokenState = _tokenState;
    }
}