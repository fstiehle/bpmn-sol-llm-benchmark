// test openai/gpt-4.1 - one-shot at 2025-06-11T23:53:06.877Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_802c863c_4e9f_4fd4_91a3_c6441402a47b {
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
        while(_tokenState != 0) {
            // <--- sid-E28CC24B-AC58-49CC-BFFA-0D9EF3EF42BE Andernungsvorschlag_kommunizieren --->
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    // Split at sid-4615930D-B5C4-4E2F-8387-BCE83BA57BCC: activate both outgoing tasks in parallel
                    _tokenState |= 6; // 2 | 4
                    id = 0;
                    continue;
                }
            }
            // <--- sid-A216BD63-B9E5-49FE-9886-390805B714A1 Vorschlag_bearbeiten (Planung) --->
            if (_tokenState & 2 == 2) {
                if (4 == id && msg.sender == participants[9]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    // Join at sid-56A6777D-B521-4865-9CC1-17C802EF46F3: wait for both branches
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-2BD93612-BF47-4CC1-A8AF-29908F355C95 Vorschlag_bearbeiten (Logistik) --->
            if (_tokenState & 4 == 4) {
                if (5 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    // Join at sid-56A6777D-B521-4865-9CC1-17C802EF46F3: wait for both branches
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // Parallel Join (sid-56A6777D-B521-4865-9CC1-17C802EF46F3): Wait for both Vorschlag_bearbeiten to finish
            if ((_tokenState & 16) == 16 && ((_tokenState & 2) != 2) && ((_tokenState & 4) != 4)) {
                // After join, forward token to sid-86B9691F-9696-4885-BDF8-057023274FA3 (exclusive gateway)
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            // Exclusive Gateway: sid-86B9691F-9696-4885-BDF8-057023274FA3 (eindeutige_Zustimmung)
            if (_tokenState & 32 == 32) {
                bool condMatched = false;
                // sid-62B15646-D67C-45F5-93B0-5465F7CDB76D ("conditions & 1 == 1") to EndEvent
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    // End event reached
                    _tokenState = 0;
                    condMatched = true;
                    break;
                }
                // Default: sid-6880F27C-B345-418E-8187-2646DA35F5FF to sid-3BAD666F-D1C4-4B47-9048-BF49D361A4B1
                if (!condMatched) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }
            // <--- sid-3BAD666F-D1C4-4B47-9048-BF49D361A4B1 Besprechung_ansetzen --->
            if (_tokenState & 64 == 64) {
                if (2 == id && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            // Exclusive Gateway: sid-981ABBFC-8429-45DD-B1C5-892F35CC72FD (Lösung_gefunden)
            if (_tokenState & 128 == 128) {
                bool condMatched = false;
                // sid-5E4D7781-E243-4DBA-94B4-C39B449A35DD ("conditions & 2 == 2") to EndEvent
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(128);
                    // End event reached
                    _tokenState = 0;
                    condMatched = true;
                    break;
                }
                // Default: sid-9CE08802-1A0A-46A6-B698-872FD255C62E to sid-E9C763EC-A03F-4549-A09D-A01F35017123
                if (!condMatched) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                }
            }
            // <--- sid-E9C763EC-A03F-4549-A09D-A01F35017123 Information --->
            if (_tokenState & 256 == 256) {
                if (3 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    // End event reached
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}