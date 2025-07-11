// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:54:31.141Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_5aefb762_fb87_4c5e_96a2_1e48284acd78 {
    uint public tokenState = 1;
    address[18] public participants;
    uint public conditions;

    constructor(address[18] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-D26FF6A4-755A-42D6-83AC-6E1BCD2E3DCC zahtev za transportom --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-1478F954-F4CD-4D75-AB29-32006E1737BA slanje odgovora korisniku --->
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-254C8972-E435-4E2C-8E5C-BBAFAFFB3F25 uplata novca --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-07E79413-87B7-4016-AEFD-DD21A4A53F6C predaja paketa --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-B5927152-BA31-42DA-9FF2-944F652939F6 obavestavanje korisnika --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-0B99A3A5-DEB6-419E-9665-352934032AF6 obavestavanje nadleznih organa --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-2A28886A-6E1C-4CF3-9713-8DA868C5BB8F predaja paketa carini --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // <--- sid-9E932A3A-97DC-49AF-A04E-0EE0C0B73A94 vracanje paketa korisniku --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 4096 == 4096) {
                // <--- sid-8E7FDDB4-F7AE-431F-8AC6-3B7E5B02CAF7 slanje potvrde o isporuci paketa --->
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-04E45947-BC8B-4741-A1AB-93220DE04C9A pronadjen nelegalan sadrzaj? --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 512;
                    continue;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32 | 64; // Default flow to parallel gateway
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- sid-07B97F10-B778-493C-AB77-E545F1EBA2D7 dokumentacija ispravna? --->
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096;
                    continue;
                } else {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Default flow
                    continue;
                }
            }
            if (_tokenState & 384 == 384) {
                // <--- sid-A914AC11-69EB-49B0-A029-C15DA1CCF7FB converging parallel gateway --->
                _tokenState &= ~uint(384);
                _tokenState |= 0;
                break; // is end
            }
            break;
        }
        tokenState = _tokenState;
    }
}