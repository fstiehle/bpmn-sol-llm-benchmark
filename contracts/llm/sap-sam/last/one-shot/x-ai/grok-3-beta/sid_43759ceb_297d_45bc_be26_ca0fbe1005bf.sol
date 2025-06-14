// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:49:06.367Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_43759ceb_297d_45bc_be26_ca0fbe1005bf {
    uint public tokenState = 1; // Start with the start event active
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
            // Start Event to Task 1
            if (_tokenState & 1 == 1) {
                // Start Event transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 1
                continue;
            }

            // Task 1: Korisnik ima problem (sid-F7F3C968-49FE-4E45-9D23-88A8D6512528)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Task 2
                    id = 0;
                    continue;
                }
            }

            // Task 2: Zahtevanje detaljnijeg opisa problema (sid-CFB94369-6DC6-4A48-8CB3-0224494D2054)
            if (_tokenState & 4 == 4) {
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Gateway 1
                    id = 0;
                    continue;
                }
            }

            // Gateway 1: Zna kako da resi problem? (sid-4AE43A7F-49CD-4654-852D-C8B13BA9A88C)
            if (_tokenState & 8 == 8) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 128; // Move to Converging Gateway 2 (sid-1B0A61E0-9252-4495-A515-DD76CE5F5DDC)
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to Task 4 (default path)
                    continue;
                }
            }

            // Task 4: Konsultovanje podrske I nivoa (sid-43D5C23B-4BAF-4D90-A088-FECE19108670)
            if (_tokenState & 16 == 16) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Gateway 2
                    id = 0;
                    continue;
                }
            }

            // Gateway 2: Podrska I nivoa zna da resi problem? (sid-07C0ABF7-3050-49A6-BA56-A74824E57917)
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // Move to Converging Gateway 1 (sid-13D1392F-10DB-4B84-AA04-4CBC0D323E0B)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Task 6 (default path)
                    continue;
                }
            }

            // Task 6: Konsultovanje podrske II nivoa (sid-968CBB3E-23E7-4AC0-87A5-75DA650EE511)
            if (_tokenState & 64 == 64) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to Task 7
                    id = 0;
                    continue;
                }
            }

            // Task 7: Saopstavanje resenja problema podrsci I nivoa (sid-8AC8B7C6-BE9D-4CD0-B309-0D83C70F7C21)
            if (_tokenState & 128 == 128) {
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to Converging Gateway 1 (sid-13D1392F-10DB-4B84-AA04-4CBC0D323E0B)
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway 1 (sid-13D1392F-10DB-4B84-AA04-4CBC0D323E0B)
            if (_tokenState & 256 == 256) {
                _tokenState &= ~uint(256);
                _tokenState |= 512; // Move to Task 5
                continue;
            }

            // Task 5: Saopstavanje resenja problema operateru (sid-DECE56B3-AD26-4313-9744-49DF2A6C6A9F)
            if (_tokenState & 512 == 512) {
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Move to Converging Gateway 2 (sid-1B0A61E0-9252-4495-A515-DD76CE5F5DDC)
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway 2 (sid-1B0A61E0-9252-4495-A515-DD76CE5F5DDC)
            if (_tokenState & 1024 == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 2048; // Move to Task 3
                continue;
            }

            // Task 3: Saopstavanje resenja problema korisniku (sid-31D3A0CF-717F-4EF7-9B47-774CB8A8215D)
            if (_tokenState & 2048 == 2048) {
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 0; // Process ends
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}