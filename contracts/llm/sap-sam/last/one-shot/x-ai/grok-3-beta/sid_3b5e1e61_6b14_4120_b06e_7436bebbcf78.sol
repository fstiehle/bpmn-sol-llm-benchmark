// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:47:48.602Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_3b5e1e61_6b14_4120_b06e_7436bebbcf78 {
    uint public tokenState = 1; // Start with the first position active
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
            if (_tokenState & 1 == 1) {
                // <--- sid-94F70433-8341-46E2-BDF2-4618E585F5BF TAKE ORDER --->
                if (1 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-BEA42E4E-8B88-4FFE-BB71-CE36365C328F RECEIVE ORDER --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-AB9344BF-BDEE-478F-9F85-1838E22FCA17 Prepare order alone or forward to Chef? --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to task sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Default path to sid-C0851B6B-257A-46E5-A1D0-866B5BC469AD
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-C0851B6B-257A-46E5-A1D0-866B5BC469AD PREPARE ORDER --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to sid-C379B774-4A75-45FB-90E2-803FCA4E186B
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37 RECEIVE ORDER --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Move to sid-2F7E36B3-59B6-4382-8BD1-91129722202E
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-2F7E36B3-59B6-4382-8BD1-91129722202E ASSESS PREPARED ORDER --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to gateway sid-B4CD4217-5C75-403F-BB21-36AC69ED9243
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-B4CD4217-5C75-403F-BB21-36AC69ED9243 Is the prepared order approved? --->
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 32; // Move to sid-C379B774-4A75-45FB-90E2-803FCA4E186B
                    continue;
                } else {
                    _tokenState &= ~uint(128);
                    _tokenState |= 16; // Default path back to sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-C379B774-4A75-45FB-90E2-803FCA4E186B SERVE ORDER --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // Move to sid-3A161C1A-E002-42B1-8D32-B26788B81967
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-3A161C1A-E002-42B1-8D32-B26788B81967 RECEIVE ORDER --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // End of process
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}