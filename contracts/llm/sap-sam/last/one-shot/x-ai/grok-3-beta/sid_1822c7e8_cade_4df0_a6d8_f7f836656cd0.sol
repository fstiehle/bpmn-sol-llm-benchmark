// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:37:13.107Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_1822c7e8_cade_4df0_a6d8_f7f836656cd0 {
    uint public tokenState = 1;
    address[28] public participants;
    uint public conditions;

    constructor(address[28] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-DA84BA08-B7DF-4E7F-B502-F2C789669FAE Send order M1 --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- Exclusive Gateway sid-C8A24191-AB00-4C7A-A503-3C350549E96E --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-3E1B879A-1EC2-46C5-B4DB-77605BBAE851 Place order M2 --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-879DCB4A-9EF3-4F4A-AE92-4B95383350FF Place order M8 --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-0EBA2E25-63DB-4C3A-95B2-CFDE541B2006 Request parts M3 --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-15A11F47-1F33-4803-B8F7-440795284DB1 Send results M4 --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-6E071B7B-C0EB-4879-A1DF-B1A344799186 Request parts M5 --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-3F4A95BF-34C1-44AB-9E08-FBE4E1490C03 Send results M6 --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-FC47CCE2-1C2B-4A27-9705-92DA082B74E9 Send F. Results M7 --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- Parallel Gateway sid-B9C506B2-01F4-4AE4-8691-779ED8E74854 Split --->
                _tokenState &= ~uint(32);
                _tokenState |= 2048 | 4096;
                continue;
            }
            if (_tokenState & 2048 == 2048) {
                // <--- sid-E4662327-03C0-473C-9B95-A3FA584B1748 Request parts M9 --->
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                // <--- sid-7639E8EE-B9E6-4863-B197-B935A2CF4455 Request parts M11 --->
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 16384;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8192 == 8192) {
                // <--- sid-65C3DC22-C1E8-4A6D-B677-0FE4B441CD73 Send results M10 --->
                if (11 == id && msg.sender == participants[20]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16384 == 16384) {
                // <--- sid-EF303951-32C0-4491-AE3A-AD89232CEADD Send results M12 --->
                if (12 == id && msg.sender == participants[22]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32768 == 32768 && _tokenState & 65536 == 65536) {
                // <--- Parallel Gateway sid-77F63C0A-43FF-460B-BA77-C0EF3860813A Join --->
                _tokenState &= ~uint(32768 | 65536);
                _tokenState |= 131072;
                continue;
            }
            if (_tokenState & 131072 == 131072) {
                // <--- sid-529BCFB1-7900-4F61-96AC-0BA312F038FA Send F. Results M13 --->
                if (13 == id && msg.sender == participants[24]) {
                    _tokenState &= ~uint(131072);
                    _tokenState |= 262144;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024 || _tokenState & 262144 == 262144) {
                // <--- Exclusive Gateway sid-6E02B7C6-497A-4E51-AD43-18DC80FCEE06 Converging --->
                if (_tokenState & 1024 == 1024) {
                    _tokenState &= ~uint(1024);
                }
                if (_tokenState & 262144 == 262144) {
                    _tokenState &= ~uint(262144);
                }
                _tokenState |= 524288;
                continue;
            }
            if (_tokenState & 524288 == 524288) {
                // <--- sid-4FACF340-7FFA-4571-B498-DEE0460BB685 Reply M14 --->
                if (14 == id && msg.sender == participants[26]) {
                    _tokenState &= ~uint(524288);
                    _tokenState = 0;
                    id = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}