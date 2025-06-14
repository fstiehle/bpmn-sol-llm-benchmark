// test openai/gpt-4.1 - one-shot at 2025-06-11T23:50:32.806Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_7a6c7274_4eff_42d4_9e55_ea2793b0259b {
    uint public tokenState = 1;
    address[6] public participants;
    uint public conditions;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // taskID mapping:
    // 1: sid_318B7DE9_B76B_4BF1_873D_AA8D0B979925 (Antrag verschicken)
    // 2: sid_73CAEE4D_3B51_4B1E_8204_231D4AC0C13B (Annehmen)
    // 3: sid_4700529E_F434_4F38_9D0A_AE6D75F71C17 (Ablehnen)
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            // sid_318B7DE9_B76B_4BF1_873D_AA8D0B979925 (Antrag verschicken)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- Antrag verschicken --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // ExclusiveGateway sid_1DFF2F64_58F8_4AF0_AE8B_1DCC7B379EF9
            // Bit 2
            if (_tokenState & 2 == 2) {
                // Evaluate conditions & 1 == 1 to Ablehnen (task 3, bit 8)
                // sid-22A5584F-4C96-4340-BC55-752C4D3DD200 (conditions & 1 == 1)
                if (conditions & 1 == 1) {
                    // to Ablehnen
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                } else {
                    // default: to Annehmen
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            // sid_73CAEE4D_3B51_4B1E_8204_231D4AC0C13B (Annehmen)
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    // <--- Annehmen --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break;
                }
            }
            // sid_4700529E_F434_4F38_9D0A_AE6D75F71C17 (Ablehnen)
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    // <--- Ablehnen --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}