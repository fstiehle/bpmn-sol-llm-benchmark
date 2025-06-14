// test openai/gpt-4.1 - one-shot at 2025-06-11T23:30:00.481Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_24949f80_f61f_4372_83d5_6a6139f7126e {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {

            // Task 1: Anfrage_stellen (sid-2A8C519B-FA14-48DA-9551-53685209B7F3)
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) {
                    // custom code for Anfrage_stellen
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // Task 2: Angebot_vorlegen (sid-17E8C140-858E-4263-8049-98F7DA801390)
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[3]) {
                    // custom code for Angebot_vorlegen
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway sid-A98A2F83_9C3D_4AC5_ACD1_7878EF55E3E2: token=4
            if (_tokenState & 4 == 4) {
                // sid-EC968EF0-5BE4-4A6C-8407-1D72412B1994 --> Angebot_ablehnen
                // sid-53903FAA-0674-428A-91E8-7379C7541056 --> Angebot_zusagen
                // No conditionExpression defined, so split to either Absage or Zusage by conditions
                // By BPMN, branch must be chosen externally via conditions variable (bit 1: Absage, bit 2: Zusage)
                if (conditions & 1 == 1) {
                    // "Absage" path
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
                if (conditions & 2 == 2) {
                    // "Zusage" path
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
                // If neither, halt until conditions set
                break;
            }

            // Task 3: Angebot_ablehnen (sid-F80E4543-2ECB-464B-A37D-243945E38A27)
            if (_tokenState & 8 == 8) {
                if (3 == id && msg.sender == participants[4]) {
                    // custom code for Angebot_ablehnen
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }

            // Task 4: Angebot_zusagen (sid-CCF831C8-84D6-4DB1-9F15-73E236241023)
            if (_tokenState & 16 == 16) {
                if (4 == id && msg.sender == participants[6]) {
                    // custom code for Angebot_zusagen
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            // Task 5: Verfuegbarkeit_pruefen (sid-A78896B1-BFDB-4C77-88EC-A87A9D33CE54)
            // MultiInstanceParallel: need both suppliers checked (simulate with two bits: 32 (first), 64 (second), must both be done)
            // We model the first activation as 32; after first execution, set 64; after second, move to next
            if (_tokenState & 32 == 32) {
                if (5 == id && msg.sender == participants[8]) {
                    // custom code for Verfuegbarkeit_pruefen (first instance)
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[8]) {
                    // custom code for Verfuegbarkeit_pruefen (second instance)
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            // Task 6: Kaffeebohnen_bestellen (sid-193B1B0A-E12A-4687-AF7E-387F711B4BCA)
            if (_tokenState & 128 == 128) {
                if (6 == id && msg.sender == participants[10]) {
                    // custom code for Kaffeebohnen_bestellen
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            // Task 7: Kaffeebohnen_liefern (sid-321D60EE-2226-4B45-91C2-440C52F3C3BA)
            if (_tokenState & 256 == 256) {
                if (7 == id && msg.sender == participants[13]) {
                    // custom code for Kaffeebohnen_liefern
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
