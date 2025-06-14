// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:39:14.504Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_21aac2de_d691_4d66_8b8f_709c14cb84c4 {
    uint public tokenState = 1; // Start with the start event active
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
            // Task 1: Aenderung senden (sid-06D8F2D0-6BD1-4AF1-B057-F2BDF456D669)
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to parallel gateway sid-C0AFA4ED-0702-4751-8DF3-2C8A14C92959
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Diverging (sid-C0AFA4ED-0702-4751-8DF3-2C8A14C92959) - Split
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                _tokenState |= 4; // Activate Task 2
                _tokenState |= 8; // Activate Task 3
                continue;
            }

            // Task 2: Vorschlag bearbeiten (sid-A06E9F8A-1AFE-44B0-B216-2031CB8BE358)
            if (_tokenState & 4 == 4) {
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to parallel gateway converging sid-1133F5B6-D5E3-45A1-B3AA-C41BC9AAA7D5 (Branch 1)
                    id = 0;
                    continue;
                }
            }

            // Task 3: Vorschlag bearbeiten (sid-03DBAEBA-74CD-4B04-BD71-F56E32E84F02)
            if (_tokenState & 8 == 8) {
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to parallel gateway converging sid-1133F5B6-D5E3-45A1-B3AA-C41BC9AAA7D5 (Branch 2)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Converging (sid-1133F5B6-D5E3-45A1-B3AA-C41BC9AAA7D5) - Join
            if (_tokenState & 48 == 48) { // 16 + 32
                _tokenState &= ~uint(48);
                _tokenState |= 64; // Move to exclusive gateway sid-081E9232-C01C-420D-A833-6C22805EF577
                continue;
            }

            // Exclusive Gateway (sid-081E9232-C01C-420D-A833-6C22805EF577)
            if (_tokenState & 64 == 64) {
                _tokenState &= ~uint(64);
                if (conditions & 1 == 1) {
                    _tokenState |= 0; // Move to end event sid-4BED3AAA-EF6F-4E9D-B70C-2149127CF587
                    break; // End process
                } else {
                    _tokenState |= 128; // Default path to Task 4 sid-24729521-9EAE-4157-8A7A-D2C60B7B8FF7
                }
                continue;
            }

            // Task 4: Verhandlung ueber Meeting (sid-24729521-9EAE-4157-8A7A-D2C60B7B8FF7)
            if (_tokenState & 128 == 128) {
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to exclusive gateway sid-F759C76E-18F3-4988-9440-EC54330EC30C
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway (sid-F759C76E-18F3-4988-9440-EC54330EC30C)
            if (_tokenState & 256 == 256) {
                _tokenState &= ~uint(256);
                if (conditions & 2 == 2) {
                    _tokenState |= 512; // Move to Task 5 sid-F8A4FB9C-08D5-433D-8DA5-4990DE96F98E
                } else {
                    _tokenState |= 0; // Default path to end event sid-4BED3AAA-EF6F-4E9D-B70C-2149127CF587
                    break; // End process
                }
                continue;
            }

            // Task 5: Geschaeftsfuehrer informieren (sid-F8A4FB9C-08D5-433D-8DA5-4990DE96F98E)
            if (_tokenState & 512 == 512) {
                if (5 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // Move to end event sid-4BED3AAA-EF6F-4E9D-B70C-2149127CF587
                    id = 0;
                    break; // End process
                }
            }

            break; // Exit loop if no conditions are met
        }
        tokenState = _tokenState;
    }
}