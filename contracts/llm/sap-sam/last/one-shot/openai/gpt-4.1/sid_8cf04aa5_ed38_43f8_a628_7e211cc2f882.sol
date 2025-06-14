// test openai/gpt-4.1 - one-shot at 2025-06-11T23:55:44.087Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_8cf04aa5_ed38_43f8_a628_7e211cc2f882 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // taskID mapping:
    // 1: sid_A981B3EA_FC92_4ABE_9906_A9AB18283EAC (przyjmij pacjenta)
    // 2: sid_0A2B5205_D3C8_4D18_8617_B059BA9DF38D (zapisz pacjenta)
    // 3: sid_1C994BCF_8067_4CF5_B9A1_1E5E1E24B8AA (wyslanie organu)
    // 4: sid_44FA8648_8BD1_4ED3_BB90_1524147E2E12 (wyslanie odwolania)

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // --- sid_A981B3EA_FC92_4ABE_9906_A9AB18283EAC (przyjmij pacjenta) ---
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // custom code for przyjmij pacjenta
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // --- sid_0A2B5205_D3C8_4D18_8617_B059BA9DF38D (zapisz pacjenta) ---
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    // custom code for zapisz pacjenta
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // --- Exclusive Gateway sid_A448521E_0933_448B_A270_8EC27F0CC5B3 ---
            // Represented by bit 4 (after zapisz pacjenta)
            if (_tokenState & 4 == 4) {
                // Two outgoing: sid_7FC618E9_E3FA_4208_9639_20E05D593FCB (to wyslanie organu, default)
                // and sid_546BF745_183E_42CD_A7C5_E6365B247939 (to wyslanie odwolania, condition: conditions & 1 == 1)
                bool taken = false;
                if (conditions & 1 == 1) {
                    // sid_546BF745_183E_42CD_A7C5_E6365B247939 -> wyslanie odwolania
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    taken = true;
                }
                if (!taken) {
                    // default: sid_7FC618E9_E3FA_4208_9639_20E05D593FCB -> wyslanie organu
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                }
                continue;
            }
            // --- sid_1C994BCF_8067_4CF5_B9A1_1E5E1E24B8AA (wyslanie organu) ---
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[5]) {
                    // custom code for wyslanie organu
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // --- sid_44FA8648_8BD1_4ED3_BB90_1524147E2E12 (wyslanie odwolania) ---
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[6]) {
                    // custom code for wyslanie odwolania
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            // --- Exclusive Gateway sid_1FEF189D_8FDA_48C4_B234_28C9600F06EF (join for end) ---
            // It is a join gateway, expects either wyslanie organu (bit 32) or wyslanie odwolania (bit 64)
            // Both lead to end, only one path is ever active
            if (_tokenState & 32 == 32) {
                // Path from wyslanie organu
                _tokenState &= ~uint(32);
                _tokenState |= 0;
                break;
            }
            if (_tokenState & 64 == 64) {
                // Path from wyslanie odwolania
                _tokenState &= ~uint(64);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}