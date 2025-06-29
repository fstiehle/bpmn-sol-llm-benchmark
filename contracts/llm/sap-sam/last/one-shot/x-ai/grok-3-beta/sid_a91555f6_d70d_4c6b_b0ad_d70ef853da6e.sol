// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:13:19.536Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
    uint public tokenState = 1; // Start with the initial state
    address[36] public participants; // Array of participant addresses
    uint public conditions; // Conditions for gateway decisions
    uint public attemptCount = 0; // For loop handling (i = 3 check)

    constructor(address[36] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to first task
                continue;
            }

            // ChoreographyTask sid-C239469D-57BD-4C4D-B124-5EF5ACD3DE1C (Auftrag einleiten)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-48A887EF-89AB-404B-93A3-AA3401E32F92 (Auftrag und Kapazitaeten ueberpruefen)
            if (_tokenState & 4 == 4) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-69BEE4E4-AB00-41AF-AF6C-9F4045F94E56
            if (_tokenState & 8 == 8) {
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to stornierung path
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Default: realisierbar path
                    continue;
                }
            }

            // ChoreographyTask sid-DCF5CEC1-0C21-4BE8-BA02-C70522B864AA (Auftragsstornierung senden)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            // ChoreographyTask sid-DFFAB4E3-594A-472C-92DE-14806C638BAF (Rechtliche Aspekte ueberpruefen)
            if (_tokenState & 32 == 32) {
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-2856C72E-CF6C-470D-81AE-3DCA9E40482E
            if (_tokenState & 64 == 64) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to Auftragsbestaetigung
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Default: problematisch path
                    continue;
                }
            }

            // ChoreographyTask sid-C04696F9-6DC0-4F24-BCE8-9CC8DBB4C003 (Auftragsbestaetigung senden)
            if (_tokenState & 128 == 128) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-24D1978A-2852-4BBB-946C-68E17547519C (Forschungen einleiten)
            if (_tokenState & 512 == 512) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-7C3C0919-B7D2-4893-9A79-122FF408E54B
            if (_tokenState & 1024 == 1024) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Move to Herstellungsprozess
                    continue;
                } else {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096; // Default: Forschungen nicht erfolgreich
                    continue;
                }
            }

            // Gateway sid-8B1BAB42-BA01-48FE-A5A8-D45CEFB25103 (Converging)
            if (_tokenState & 256 == 256 || _tokenState & 4096 == 4096) {
                _tokenState &= ~uint(256);
                _tokenState &= ~uint(4096);
                _tokenState |= 16; // Move to Auftragsstornierung
                continue;
            }

            // Gateway sid-35217493-4799-4124-BD24-4F9402FE5268 (Converging)
            if (_tokenState & 2048 == 2048 || _tokenState & 8192 == 8192) {
                _tokenState &= ~uint(2048);
                _tokenState &= ~uint(8192);
                _tokenState |= 16384; // Move to Herstellungsprozess
                continue;
            }

            // ChoreographyTask sid-B7D3EC60-EAEE-4594-A016-5B46D4359125 (Herstellungsprozess einleiten)
            if (_tokenState & 16384 == 16384) {
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 32768; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-98A8C0FD-93D5-4AE6-A018-DDAFDEB9479A (Qualitaetskontrolle durchfuehren)
            if (_tokenState & 32768 == 32768) {
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(32768);
                    _tokenState |= 65536; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-B216E792-FFDE-4AEC-AF35-317D250205B0
            if (_tokenState & 65536 == 65536) {
                if (conditions & 8 == 8) {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 131072; // Move to Ursachen analysieren path
                    continue;
                } else {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 262144; // Default: bestanden path
                    continue;
                }
            }

            // ChoreographyTask sid-BC5EFE3A-707F-47D6-8227-DE4753477F70 (Probe ausliefern)
            if (_tokenState & 262144 == 262144) {
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(262144);
                    _tokenState |= 524288; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-02ACAA68-B584-43E2-B00F-E051ABD75073 (Qualitaetskontrolle durchfuehren)
            if (_tokenState & 524288 == 524288) {
                if (11 == id && msg.sender == participants[20]) {
                    _tokenState &= ~uint(524288);
                    _tokenState |= 1048576; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-22214891-5F47-4B8B-ADDC-06E82BD4FCA1
            if (_tokenState & 1048576 == 1048576) {
                if (conditions & 16 == 16) {
                    _tokenState &= ~uint(1048576);
                    _tokenState |= 2097152; // Move to Qualitaetsbestaetigung
                    continue;
                } else {
                    _tokenState &= ~uint(1048576);
                    _tokenState |= 4194304; // Default: nicht bestanden path
                    continue;
                }
            }

            // ChoreographyTask sid-7B533088-1A10-47EB-AB27-710D74341063 (Anzahl ueberpruefen)
            if (_tokenState & 4194304 == 4194304) {
                if (12 == id && msg.sender == participants[22]) {
                    _tokenState &= ~uint(4194304);
                    _tokenState |= 8388608; // Move to gateway
                    attemptCount += 1; // Increment attempt count
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-69509D2C-03B5-4175-8E2D-C5FE3C7C76FB (i = 3 ?)
            if (_tokenState & 8388608 == 8388608) {
                if (conditions & 32 == 32 || attemptCount >= 3) {
                    _tokenState &= ~uint(8388608);
                    _tokenState |= 16777216; // Move to Auftragsstornierung
                    continue;
                } else {
                    _tokenState &= ~uint(8388608);
                    _tokenState |= 33554432; // Default: Reklamation path
                    continue;
                }
            }

            // ChoreographyTask sid-BB48F939-F07D-4C27-B96B-02424B7776D3 (Reklamation senden)
            if (_tokenState & 33554432 == 33554432) {
                if (13 == id && msg.sender == participants[24]) {
                    _tokenState &= ~uint(33554432);
                    _tokenState |= 67108864; // Move to converging gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-F00E71CC-D4FF-4FB3-9D47-0FC6ED349AAA (Converging)
            if (_tokenState & 131072 == 131072 || _tokenState & 67108864 == 67108864) {
                _tokenState &= ~uint(131072);
                _tokenState &= ~uint(67108864);
                _tokenState |= 134217728; // Move to Ursachen analysieren
                continue;
            }

            // ChoreographyTask sid-5334FE47-DD51-49CA-8176-4B9DF7415F4E (Ursachen analysieren)
            if (_tokenState & 134217728 == 134217728) {
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(134217728);
                    _tokenState |= 8192; // Move back to converging gateway
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-CA197233-FA4B-497C-B86F-5C1B36EA22DF (Auftragsstornierung senden)
            if (_tokenState & 16777216 == 16777216) {
                if (14 == id && msg.sender == participants[26]) {
                    _tokenState &= ~uint(16777216);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            // ChoreographyTask sid-4F2F3D5F-4677-417E-B2CB-99D5469A3092 (Qualitaetsbestaetigung senden)
            if (_tokenState & 2097152 == 2097152) {
                if (15 == id && msg.sender == participants[28]) {
                    _tokenState &= ~uint(2097152);
                    _tokenState |= 268435456; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-CEC360BB-AC3B-49EF-8400-590588EB1323 (Biopharmazeutika ausliefern)
            if (_tokenState & 268435456 == 268435456) {
                if (16 == id && msg.sender == participants[30]) {
                    _tokenState &= ~uint(268435456);
                    _tokenState |= 536870912; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-41418591-E182-4CB8-A250-13AE413DB96F (Eingang bestaetigen)
            if (_tokenState & 536870912 == 536870912) {
                if (17 == id && msg.sender == participants[32]) {
                    _tokenState &= ~uint(536870912);
                    _tokenState |= 1073741824; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-70F253A9-42F4-4B2F-97D8-08A905A14818 (Rechnung erstellen)
            if (_tokenState & 1073741824 == 1073741824) {
                if (18 == id && msg.sender == participants[34]) {
                    _tokenState &= ~uint(1073741824);
                    _tokenState |= 0; // End process
                    break;
                }
            }

            break; // Break the loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}