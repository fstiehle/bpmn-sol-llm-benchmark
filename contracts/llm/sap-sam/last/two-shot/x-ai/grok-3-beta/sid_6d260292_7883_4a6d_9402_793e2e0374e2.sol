// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:38:32.017Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_6d260292_7883_4a6d_9402_793e2e0374e2 {
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
            if (_tokenState & 2 == 2) {
                // <--- sid-23AC13FC-2149-455A-B3BD-0AAE42B65E19 T1 --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-7F1513B0-C957-4B85-B9F9-B8E3A4247123 T2 --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 0; // End of this path
                    id = 0;
                    if (_tokenState == 0) break; // If no other paths active, terminate
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-B1284174-413A-49C0-9CB0-12564D20E00F T3 --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-39C5F9D9-295C-4FA1-91CB-3AB98F3EBD94 T4 --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // End of this path
                    id = 0;
                    if (_tokenState == 0) break; // If no other paths active, terminate
                    continue;
                }
            }
            if (_tokenState & 1 == 1) {
                if (conditions & 1 == 1) {
                    // <--- auto transition for sid-DF34930F-98FE-4848-A56D-4066D4D41E23 --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 8;
                    continue;
                } else {
                    // <--- default path sid-C46E4C3E-AB65-4FA4-B379-A2DF228CDEA7 --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}