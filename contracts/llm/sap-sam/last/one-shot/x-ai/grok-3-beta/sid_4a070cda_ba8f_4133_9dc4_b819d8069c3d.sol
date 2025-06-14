// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:50:02.894Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_4a070cda_ba8f_4133_9dc4_b819d8069c3d {
    uint public tokenState = 1; // Start with the initial state at the start event
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
                // Start Event -> Task 1 (place book order)
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to Task 1
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-8382BE04-333B-4CFB-8F63-AF54B9DC4243 place book order --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Task 2
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-6F700DF7-4544-413A-8DED-F158468BA83E place & confirm back order --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Parallel Gateway (Diverging)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Parallel Gateway Diverging (sid-928CC788-D9A2-4DA1-840E-CCC50154A57C)
                // Activate both outgoing paths concurrently
                _tokenState &= ~uint(8);
                _tokenState |= 16; // Path to Task 3 (send invoice)
                _tokenState |= 32; // Path to Task 4 (send shipment information)
                continue;
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-A9CAF9F4-C96A-433F-A9E2-B1852E424450 send invoice --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Move to converging gateway path 1
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-FA1EC6B2-A97F-451B-848C-2653F126F817 send shipment information --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Move to Task 5
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-0B14E175-63F6-4EA0-A1A3-3EBC30E807B7 issue shipment --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Move to Task 6
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-FDFE5AC6-2C1C-4A5D-8208-747618BC9359 deliver shipment --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to converging gateway path 2
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 576 == 576) {
                // Parallel Gateway Converging (sid-0275EE9A-3006-4D29-8B40-03B5B46726E8)
                // Wait for both incoming paths (64 from Task 3, 512 from Task 6)
                _tokenState &= ~uint(576); // Clear both paths
                _tokenState |= 1024; // Move to Task 7 (send payment)
                continue;
            }
            if (_tokenState & 1024 == 1024) {
                // <--- sid-05AA275D-E5B4-4A74-BA38-E31D1EC4EDB9 send payment --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0; // End of process
                    id = 0;
                    break; // Terminate process
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}