// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:46:05.377Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_3413b861_8a47_41d3_8daf_a1e81bd3e518 {
    uint public tokenState = 1; // Start with the initial state (start event)
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
            // Task 1: Slanje opisa problema (sid-0CB4AAC5-693A-4689-A62F-ED9E9AD3FC1E)
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // Task 2: Dobijanje detaljnog opisa problema (sid-1A819D31-39BF-4D46-BCA2-B179558E994C)
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway: Operater zna da resi? (sid-23D431AF-1D80-42F9-839E-B870F7ACDE9B)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to task sid-C978C6C9-48E1-49A2-A2FA-65F0F7BC5B41
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default path to task sid-95FC3A8B-EA99-429F-8CD6-660CB56644B7
                    continue;
                }
            }

            // Task 3: Slanje resenja (sid-95FC3A8B-EA99-429F-8CD6-660CB56644B7)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // End of process
                    id = 0;
                    break;
                }
            }

            // Task 4: (sid-C978C6C9-48E1-49A2-A2FA-65F0F7BC5B41)
            if (_tokenState & 8 == 8) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to next gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway: Podrska prvog nivoa zna da resi (sid-FFB7BEA7-8E19-4FD3-A880-B7BBF1AEBD24)
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to task sid-B8C46AE2-A3B0-4B1F-BE47-9899F5B33EAA
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Default path to task sid-57C81B29-22B6-49FC-ACFA-7F9A22C75876
                    continue;
                }
            }

            // Task 5: Slanje resenja (sid-57C81B29-22B6-49FC-ACFA-7F9A22C75876)
            if (_tokenState & 128 == 128) {
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 16; // Move to task sid-95FC3A8B-EA99-429F-8CD6-660CB56644B7
                    id = 0;
                    continue;
                }
            }

            // Task 6: Slanje opisa problema (sid-B8C46AE2-A3B0-4B1F-BE47-9899F5B33EAA)
            if (_tokenState & 64 == 64) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to next task
                    id = 0;
                    continue;
                }
            }

            // Task 7: Slanje resenja (sid-7D2DD5DA-0D4D-494E-8195-4923284FEB9F)
            if (_tokenState & 256 == 256) {
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 128; // Move to task sid-57C81B29-22B6-49FC-ACFA-7F9A22C75876
                    id = 0;
                    continue;
                }
            }

            break; // Exit loop if no conditions are met or no tasks are executed
        }
        tokenState = _tokenState;
    }
}