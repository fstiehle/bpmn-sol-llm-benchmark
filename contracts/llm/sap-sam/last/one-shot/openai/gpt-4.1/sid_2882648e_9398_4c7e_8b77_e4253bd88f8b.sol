// test openai/gpt-4.1 - one-shot at 2025-06-11T23:30:25.366Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_2882648e_9398_4c7e_8b77_e4253bd88f8b {
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
        while(_tokenState != 0) {
            // <--- sid-EC4DAEFD-7F58-4C47-A2D0-37E5828868F5 Auftrag erteilen --->
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // custom code for "Auftrag erteilen"
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-F0EF28E9-9E61-4B40-88C4-363ED4150BA5 Angebot verschicken --->
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    // custom code for "Angebot verschicken"
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-E0E83012-824B-4900-8A9E-BAD54F4F6F4F Zusage bekommen --->
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    // custom code for "Zusage bekommen"
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-D2BE1ED0-460C-4329-B485-B923623E00C5 Grafiker Anfragen --->
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    // custom code for "Grafiker Anfragen"
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-17AA1058-86A4-4D46-9158-7D938BA09ED6 Freigabe einholen --->
            if (_tokenState & 16 == 16) {
                if (id == 5 && msg.sender == participants[8]) {
                    // custom code for "Freigabe einholen"
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}