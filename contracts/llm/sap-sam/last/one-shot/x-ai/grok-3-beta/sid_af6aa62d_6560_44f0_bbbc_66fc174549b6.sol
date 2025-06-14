// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:15:07.795Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_af6aa62d_6560_44f0_bbbc_66fc174549b6 {
    uint public tokenState = 1; // Start with the start event active
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event (sid-DC0A17C6-E127-485E-A5A5-B8E917147FA9)
            if (_tokenState & 1 == 1) {
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1 (sid-E7FCB659-4703-43A0-9214-15194F511A63)
                continue;
            }

            // Task 1: Envoie du CV et de la lettre de motivation
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // sid-266CF78B-E508-45E5-918F-73FD5AE3A021
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Task 2 (sid-4278AACB-F004-481E-9317-77FBE5B74D93)
                    id = 0;
                    continue;
                }
            }

            // Task 2: Envoie de la reponse a la demande de candidature
            if (_tokenState & 4 == 4) {
                if (2 == id && msg.sender == participants[2]) { // sid-B8399EFF-DD59-4D6A-8366-5DA3FB16D7F0
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Gateway sid-C3068222-0D2A-4F31-93E7-44ED5F2AFD0B
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-C3068222-0D2A-4F31-93E7-44ED5F2AFD0B (Exclusive)
            if (_tokenState & 8 == 8) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Task 3 (sid-37595556-B917-4B18-AD74-2BCF527AAAB7)
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // Default path to End Event (sid-3D0BF6A4-A434-44EE-A7AD-33D29527DF5F)
                    break; // Process ends
                }
                continue;
            }

            // Task 3: Proposition d une date d entretien
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) { // sid-6A285D45-08AD-4358-B71D-49D1243969D1
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate Task 4 (sid-048D538C-43F7-469E-B89A-0CA584ABFC81)
                    id = 0;
                    continue;
                }
            }

            // Task 4: Reponse a la proposition de date
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[6]) { // sid-0E848B3C-4457-48A3-A6D6-893A3C4FAD44
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate Gateway sid-F9244771-04FA-4EA4-939E-323F4985039B
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-F9244771-04FA-4EA4-939E-323F4985039B (Exclusive)
            if (_tokenState & 64 == 64) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Task 5 (sid-6D162641-ADA9-40EC-AF82-B924EF51268A)
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 16; // Default path back to Task 3 (sid-37595556-B917-4B18-AD74-2BCF527AAAB7)
                }
                continue;
            }

            // Task 5: Convocation des 6 experts
            if (_tokenState & 128 == 128) {
                if (5 == id && msg.sender == participants[8]) { // sid-7C8208FC-799C-43AD-9E2A-7DCECD4EDBD7
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Task 6 (sid-6092EA39-9FE2-45B1-80A3-8851B667F4AD)
                    id = 0;
                    continue;
                }
            }

            // Task 6: Envoie du vote et de la deliberation
            if (_tokenState & 256 == 256) {
                if (6 == id && msg.sender == participants[10]) { // sid-CB433BBD-7C84-4AC3-96C6-DF2E051730D6
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate Task 7 (sid-1E35BC4F-E014-45C5-9601-FC1C31FE11B6)
                    id = 0;
                    continue;
                }
            }

            // Task 7: Envoie de la decision finale
            if (_tokenState & 512 == 512) {
                if (7 == id && msg.sender == participants[12]) { // sid-98150419-B676-42EB-B71C-476449BD0511
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate Task 8 (sid-78ED290B-8A2A-4E31-A733-DD29E2AAFFA4)
                    id = 0;
                    continue;
                }
            }

            // Task 8: Transmission de la decision finale
            if (_tokenState & 1024 == 1024) {
                if (8 == id && msg.sender == participants[14]) { // sid-7AA2511A-8107-49B5-9166-C71520DE7DB3
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Activate Gateway sid-09191CDC-5C41-4A3E-8579-13DCFFF9CC5A
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-09191CDC-5C41-4A3E-8579-13DCFFF9CC5A (Exclusive)
            if (_tokenState & 2048 == 2048) {
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // Path to End Event (sid-3D0BF6A4-A434-44EE-A7AD-33D29527DF5F)
                    break; // Process ends
                } else {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // Default path to End Event (sid-3D0BF6A4-A434-44EE-A7AD-33D29527DF5F)
                    break; // Process ends
                }
            }

            break; // Exit loop if no further transitions are possible
        }
        tokenState = _tokenState;
    }
}