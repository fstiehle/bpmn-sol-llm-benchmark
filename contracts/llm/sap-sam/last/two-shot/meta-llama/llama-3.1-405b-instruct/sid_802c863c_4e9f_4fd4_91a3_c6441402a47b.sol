// test meta-llama/llama-3.1-405b-instruct - two-shot at 2025-06-12T15:12:17.373Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_two_shot_sid_802c863c_4e9f_4fd4_91a3_c6441402a47b {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState!= 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-E28CC24B-AC58-49CC-BFFA-0D9EF3EF42BE Änderungsvorschlag kommunizieren --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-3BAD666F-D1C4-4B47-9048-BF49D361A4B1 Besprechung ansetzen --->
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-E9C763EC-A03F-4549-A09D-A01F35017123 Information --->
                if (3 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-A216BD63-B9E5-49FE-9886-390805B714A1 Vorschlag bearbeiten --->
                if (4 == id && msg.sender == participants[9]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-2BD93612-BF47-4CC1-A8AF-29908F355C95 Vorschlag bearbeiten --->
                if (5 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- auto transition --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                } else if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- auto transition --->
                _tokenState &= ~uint(64);
                _tokenState |= 0;
                break; // is end
            }
            break;
        }
        tokenState = _tokenState;
    }
}
