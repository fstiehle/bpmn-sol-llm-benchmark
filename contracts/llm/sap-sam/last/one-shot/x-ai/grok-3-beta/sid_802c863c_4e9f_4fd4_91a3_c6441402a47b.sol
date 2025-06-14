// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:02:52.977Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_802c863c_4e9f_4fd4_91a3_c6441402a47b {
    uint public tokenState = 1; // Start at StartEvent
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
            // StartEvent to Task 1 (Aenderungsvorschlag kommunizieren)
            if (_tokenState & 1 == 1) {
                // Auto transition from StartEvent
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1
                continue;
            }

            // Task 1: Aenderungsvorschlag kommunizieren (sid-E28CC24B-AC58-49CC-BFFA-0D9EF3EF42BE)
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[0]) { // Initiating participant: Produktionsleitung
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Parallel Gateway (Diverging)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Diverging (sid-4615930D-B5C4-4E2F-8387-BCE83BA57BCC)
            if (_tokenState & 4 == 4) {
                // Auto transition to activate both outgoing paths
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Task 4: Vorschlag bearbeiten (Planung)
                _tokenState |= 16; // Task 5: Vorschlag bearbeiten (Logistik)
                continue;
            }

            // Task 4: Vorschlag bearbeiten (sid-A216BD63-B9E5-49FE-9886-390805B714A1)
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[9]) { // Initiating participant: Planung
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Part of converging gateway
                    id = 0;
                    continue;
                }
            }

            // Task 5: Vorschlag bearbeiten (sid-2BD93612-BF47-4CC1-A8AF-29908F355C95)
            if (_tokenState & 16 == 16) {
                if (id == 5 && msg.sender == participants[10]) { // Initiating participant: Logistik
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Part of converging gateway
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Converging (sid-56A6777D-B521-4865-9CC1-17C802EF46F3)
            if (_tokenState & 96 == 96) { // Both incoming tokens (32 + 64)
                _tokenState &= ~uint(96);
                _tokenState |= 128; // Activate Exclusive Gateway (eindeutige Zustimmung?)
                continue;
            }

            // Exclusive Gateway: eindeutige Zustimmung? (sid-86B9691F-9696-4885-BDF8-057023274FA3)
            if (_tokenState & 128 == 128) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Direct to End Event (Lösung umsetzen)
                } else {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Default path to Task 2 (Besprechung ansetzen)
                }
                continue;
            }

            // Task 2: Besprechung ansetzen (sid-3BAD666F-D1C4-4B47-9048-BF49D361A4B1)
            if (_tokenState & 512 == 512) {
                if (id == 2 && msg.sender == participants[3]) { // Initiating participant: Produktionsleiter
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate Exclusive Gateway (Lösung gefunden?)
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway: Lösung gefunden? (sid-981ABBFC-8429-45DD-B1C5-892F35CC72FD)
            if (_tokenState & 1024 == 1024) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 256; // Direct to End Event (Lösung umsetzen)
                } else {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Default path to Task 3 (Information)
                }
                continue;
            }

            // Task 3: Information (sid-E9C763EC-A03F-4549-A09D-A01F35017123)
            if (_tokenState & 2048 == 2048) {
                if (id == 3 && msg.sender == participants[6]) { // Initiating participant: Produktionsleiter
                    _tokenState &= ~uint(2048);
                    _tokenState |= 256; // To End Event (Lösung umsetzen)
                    id = 0;
                    continue;
                }
            }

            // End Event: Lösung umsetzen (sid-80596EB8-ECB1-42A8-81E1-146F7ACA7469)
            if (_tokenState & 256 == 256) {
                _tokenState = 0; // Terminate process
                break;
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}