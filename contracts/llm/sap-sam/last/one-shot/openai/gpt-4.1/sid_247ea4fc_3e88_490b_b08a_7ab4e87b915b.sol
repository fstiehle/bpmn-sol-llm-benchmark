// test openai/gpt-4.1 - one-shot at 2025-06-11T23:29:42.734Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_247ea4fc_3e88_490b_b08a_7ab4e87b915b {
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
            // ---- Task 1: sid_0BA1CF17_3DB0_4F87_BB9B_9744CAD35C0E enviar orden de compra ----
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // custom code for enviar orden de compra
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // ---- Exclusive Gateway sid_48CDBBB4_3F12_4D9E_A27A_C2D545252764 ----
            if (_tokenState & 2 == 2) {
                // outgoing: D56AF128_53E5_4750_B8D4_E50A205A301B (to sid_218B56E6_2B14_4C26_9C7B_0EC315282FB5, task 3)
                // outgoing: 4B13E042_8B31_4311_815D_12670881E66F (to sid_5C74E58D_D02E_4C79_88CD_14DA7AE9BD6F, task 2, cond: conditions & 1 == 1)
                bool transition = false;
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    transition = true;
                    continue;
                }
                // default: D56AF128_53E5_4750_B8D4_E50A205A301B
                if (!transition) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            // ---- Task 2: sid_5C74E58D_D02E_4C79_88CD_14DA7AE9BD6F Confirmacion de orden ----
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    // custom code for Confirmacion de orden
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // ---- Task 3: sid_218B56E6_2B14_4C26_9C7B_0EC315282FB5 comprar materia prima ----
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    // custom code for comprar materia prima
                    _tokenState &= ~uint(8);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // ---- Parallel Gateway sid_902612B5_04B6_4A1C_8060_BB1F4CA704AF (split) ----
            if (_tokenState & 16 == 16) {
                // outgoing: EF98C1D9_A5C0_4348_867E_6A0F34F857B6 (to sid_E8A13914_8E0A_406E_BC57_139A04D44273, task 4)
                // outgoing: 194CD1F4_F97B_4C7A_8070_D3D6451E0C71 (to sid_2C0B5580_D8B0_4B48_B6E9_A0061B409231, task 5)
                _tokenState &= ~uint(16);
                _tokenState |= 32 | 64;
                continue;
            }
            // ---- Task 4: sid_E8A13914_8E0A_406E_BC57_139A04D44273 Envio del producto ----
            if (_tokenState & 32 == 32) {
                if (id == 4 && msg.sender == participants[6]) {
                    // custom code for Envio del producto
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            // ---- Task 5: sid_2C0B5580_D8B0_4B48_B6E9_A0061B409231 Factura al cliente ----
            if (_tokenState & 64 == 64) {
                if (id == 5 && msg.sender == participants[8]) {
                    // custom code for Factura al cliente
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            // ---- Parallel Gateway sid_D6C2AB20_92CF_4EA9_B20C_2468FEDFD3B3 (join) ----
            if (_tokenState & 384 == 384) {
                // incoming: 256 (from sid_2C0B5580_D8B0_4B48_B6E9_A0061B409231), 128 (from sid_E8A13914_8E0A_406E_BC57_139A04D44273)
                // outgoing: 512 (to end)
                _tokenState &= ~uint(384);
                _tokenState |= 512;
                continue;
            }
            // ---- End event sid_DA43F0CB_0C61_4659_96F6_22EEE67D477F ----
            if (_tokenState & 512 == 512) {
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}