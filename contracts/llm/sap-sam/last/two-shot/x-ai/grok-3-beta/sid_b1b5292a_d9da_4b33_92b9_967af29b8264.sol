// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:52:13.736Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_b1b5292a_d9da_4b33_92b9_967af29b8264 {
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-8D30ABAD-3927-4172-9CE2-67F00C02E2C5 Zapłata za towar --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-F4EB5C5A-7A7E-4B28-8573-394A547027FC Realizacja zamowienia, przesłanie informacji o przesyłce --->
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-17C76E1F-DF07-41C5-AB96-67878F5FDAB1 Aktualizacja danych na stronie --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-C8D7C501-EE1C-4921-80FC-FAB3063BD75A Przekazanie towaru kurierowi --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-884E65EB-CD77-45E9-A251-AC64A7163CD5 Wysłanie informacji o przybyciu kuriera w danym dniu o danej godzinie, proba doreczenia przesyłki --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- sid-CE1ACF04-6606-4523-8B8D-AB0FBEAED0B5 Przekazanie do punktu odbiorczego --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-6AC65B84-234D-4B9A-960C-8998833592B4 Czy zaplata sie powiodla? --->
                if (conditions & 1 == 1) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                } else {
                    // Default path
                    _tokenState &= ~uint(2);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-E22F1585-4A90-4126-BFD4-6FCF093EE0D8 Czy dostarczono przesyłke? --->
                if (conditions & 2 == 2) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    continue;
                } else {
                    // Default path
                    _tokenState &= ~uint(512);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- auto transition --->
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <--- auto transition --->
                _tokenState &= ~uint(32);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // <--- auto transition --->
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}