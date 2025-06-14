// test openai/gpt-4.1 - one-shot at 2025-06-11T23:48:38.989Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_729fde80_4806_4bce_ba45_822dd31ce731 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // <--- sid-2C952487-1897-4703-BD14-C00233174A01 Bewerbungsunterlagen senden und bestaetigen --->
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // custom code for Bewerbungsunterlagen senden und bestaetigen
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // <--- EXCLUSIVE GATEWAY sid-21D2131C-ACF9-43B0-AFA9-110E5D90F751 --->
            if (_tokenState & 2 == 2) {
                bool didTransition = false;
                // sid-40BD8468-DBEE-48B1-9703-936BED73C66F: conditions & 1 == 1 --> sid-AFF80938-EACE-4704-B168-6FD41D6291B8
                if (!didTransition && (conditions & 1 == 1)) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    didTransition = true;
                    continue;
                }
                // sid-AA34A234-94BE-4BCE-8867-EA34EFF58250: default --> sid-4D98FF7B-B8C8-4409-B650-BD9453EAA0F0
                if (!didTransition) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            // <--- sid-AFF80938-EACE-4704-B168-6FD41D6291B8 Fehlende Unterlagen anfordern und senden --->
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    // custom code for Fehlende Unterlagen anfordern und senden
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            // <--- EXCLUSIVE GATEWAY sid-4D98FF7B-B8C8-4409-B650-BD9453EAA0F0 --->
            if (_tokenState & 8 == 8) {
                // Only one outgoing (sid-BCEB3E73-2D2C-4CBD-B17C-CBFDB55C3F21) to sid-2D7C485D-0A1F-445E-BC1A-F3FE4B32D074
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                continue;
            }
            // <--- EXCLUSIVE GATEWAY sid-2D7C485D-0A1F-445E-BC1A-F3FE4B32D074 --->
            if (_tokenState & 16 == 16) {
                bool didTransition = false;
                // sid-2C297A37-CD8A-4982-90CA-9ADF85A6A8C9: conditions & 2 == 2 --> sid-B48DD1CF-E421-40C5-A189-47AA16B2A21B
                if (!didTransition && (conditions & 2 == 2)) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    didTransition = true;
                    continue;
                }
                // sid-C7842385-3F9A-45BE-8A08-FD086E55C5B9: default --> sid-93A5BA57-9EB7-44C2-A54E-FF1D2FB83C26
                if (!didTransition) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    continue;
                }
            }
            // <--- sid-B48DD1CF-E421-40C5-A189-47AA16B2A21B Zusage senden --->
            if (_tokenState & 32 == 32) {
                if (id == 3 && msg.sender == participants[4]) {
                    // custom code for Zusage senden
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            // <--- sid-93A5BA57-9EB7-44C2-A54E-FF1D2FB83C26 Absage senden --->
            if (_tokenState & 64 == 64) {
                if (id == 4 && msg.sender == participants[6]) {
                    // custom code for Absage senden
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            // <--- EXCLUSIVE GATEWAY sid-8AEE2A64-582E-4A38-8AEA-236E11A012DC --->
            if (_tokenState & (128 | 256) == (128 | 256)) {
                // Both sid-7B054DB2-B9D8-46AD-A37F-E08AD529DB64 (from Zusage) and sid-F2590D68-F12D-4746-BFA8-8AAF469793A5 (from Absage) must be active, then go to sid-311CD016-2526-4B47-A537-3EB036AF32BF (end)
                _tokenState &= ~(uint(128) | uint(256));
                _tokenState |= 0;  // process ends
                break;
            }
            // If only one of the two (Zusage/Absage) is active, wait for the other
            break;
        }
        tokenState = _tokenState;
    }
}