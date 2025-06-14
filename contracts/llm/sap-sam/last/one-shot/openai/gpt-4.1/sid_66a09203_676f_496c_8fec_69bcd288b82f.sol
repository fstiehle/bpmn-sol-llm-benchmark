// test openai/gpt-4.1 - one-shot at 2025-06-11T23:45:42.770Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_66a09203_676f_496c_8fec_69bcd288b82f {
    uint public tokenState = 1;
    address[15] public participants;
    uint public conditions;

    constructor(address[15] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // taskID mapping:
    // 1: sid_56125FD7_FBEE_47E9_B12C_9F21ECF50FBE
    // 2: sid_F6CE5331_CAB4_4FAC_BDD7_3B99BC13EECE
    // 3: sid_56CC82ED_03D3_4C04_8596_36F6EC5AF83A
    // 4: sid_627ACE73_E5A5_4C21_A82F_E4F6B855E698
    // 5: sid_898706F7_D8B6_4499_9CC2_35153078234D
    // 6: sid_218F35A0_BB4F_434A_A456_79ED84327F62

    // tokenState bit mapping:
    // 0: (1 << 0) = 1                 // StartEvent
    // 1: (1 << 1) = 2                 // Task 1 (teilt Wuensche Rahmenbedingung mit)
    // 2: (1 << 2) = 4                 // Task 2 (praesentiert moegliches Objekt)
    // 3: (1 << 3) = 8                 // ExclusiveGateway sid_2C48E915_2A98_4D58_8547_C7922A4C8935
    // 4: (1 << 4) = 16                // Task 3 (entscheidet sich fuer Objekt)
    // 5: (1 << 5) = 32                // ParallelGateway (split) sid_C8DEEA29_0B4B_454C_9351_E8A1B0ABCB86
    // 6: (1 << 6) = 64                // Task 4 (Finanzierung klaeren)
    // 7: (1 << 7) = 128               // Task 5 (bereitet Vertrag vor)
    // 8: (1 << 8) = 256               // ParallelGateway (join) sid_5E5530AA_6767_4D7E_AD0E_C196C21E0078
    // 9: (1 << 9) = 512               // Task 6 (Vertrag unterzeichnen)
    // 10: (1 << 10) = 1024            // EndEvent

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent
            if (_tokenState & 1 == 1) {
                // Start transition -> Task 1
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            // Task 1: sid_56125FD7_FBEE_47E9_B12C_9F21ECF50FBE (teilt Wuensche Rahmenbedingung mit)
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code for Task 1 --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // Task 2: sid_F6CE5331_CAB4_4FAC_BDD7_3B99BC13EECE (praesentiert moegliches Objekt)
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    // <--- custom code for Task 2 --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            // ExclusiveGateway sid_2C48E915_2A98_4D58_8547_C7922A4C8935
            if (_tokenState & 8 == 8) {
                // Has two outgoing: sid-3A31F015-2B3C-4A09-ACCC-4363462C4F1B (default, to EndEvent), sid-8428095B-A1F1-4259-978B-DF39DCBD31A4 (condition: conditions & 1 == 1, to Task 3)
                if (conditions & 1 == 1) {
                    // Condition holds, go to Task 3
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                } else {
                    // Default: EndEvent
                    _tokenState &= ~uint(8);
                    _tokenState |= 1024;
                    continue;
                }
            }
            // Task 3: sid_56CC82ED_03D3_4C04_8596_36F6EC5AF83A (entscheidet sich fuer Objekt)
            if (_tokenState & 16 == 16) {
                if (id == 3 && msg.sender == participants[4]) {
                    // <--- custom code for Task 3 --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // ParallelGateway (split) sid_C8DEEA29_0B4B_454C_9351_E8A1B0ABCB86
            if (_tokenState & 32 == 32) {
                // Two outgoing: Task 4 (64), Task 5 (128)
                _tokenState &= ~uint(32);
                _tokenState |= (64 | 128);
                continue;
            }
            // Task 4: sid_627ACE73_E5A5_4C21_A82F_E4F6B855E698 (Finanzierung klaeren)
            if (_tokenState & 64 == 64) {
                if (id == 4 && msg.sender == participants[6]) {
                    // <--- custom code for Task 4 --->
                    _tokenState &= ~uint(64);
                    // Go to join gateway, but wait for both tasks
                    // Set bit 256 if 128 (Task 5) is already finished (not set), else just clear this bit and wait for Task 5
                    if ((_tokenState & 128) == 0) {
                        _tokenState |= 256;
                    }
                    id = 0;
                    continue;
                }
            }
            // Task 5: sid_898706F7_D8B6_4499_9CC2_35153078234D (bereitet Vertrag vor)
            if (_tokenState & 128 == 128) {
                if (id == 5 && msg.sender == participants[8]) {
                    // <--- custom code for Task 5 --->
                    _tokenState &= ~uint(128);
                    // Go to join gateway, but wait for both tasks
                    if ((_tokenState & 64) == 0) {
                        _tokenState |= 256;
                    }
                    id = 0;
                    continue;
                }
            }
            // ParallelGateway (join) sid_5E5530AA_6767_4D7E_AD0E_C196C21E0078
            if (_tokenState & 256 == 256) {
                // Both 64 and 128 must be zero to proceed
                if ((_tokenState & 64) == 0 && (_tokenState & 128) == 0) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    continue;
                }
            }
            // Task 6: sid_218F35A0_BB4F_434A_A456_79ED84327F62 (Vertrag unterzeichnen)
            if (_tokenState & 512 == 512) {
                if (id == 6 && msg.sender == participants[11]) {
                    // <--- custom code for Task 6 --->
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            // EndEvent
            if (_tokenState & 1024 == 1024) {
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}