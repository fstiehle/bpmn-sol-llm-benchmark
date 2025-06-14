// test openai/gpt-4.1 - one-shot at 2025-06-11T23:47:33.125Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_6d260292_7883_4a6d_9402_793e2e0374e2 {
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

            // <--- ExclusiveGateway sid_3545C612_6034_40CD_A74D_6904D0B9A32F --->
            if (_tokenState & 1 == 1) {
                // The gateway has two outgoing: sid-C46E4C3E-AB65-4FA4-B379-A2DF228CDEA7 (default), sid-DF34930F-98FE-4848-A56D-4066D4D41E23 (condition)
                // Conditional: conditions & 1 == 1 to sid-B1284174-413A-49C0-9CB0-12564D20E00F (taskID 3, bit 8)
                // Default: to sid-23AC13FC-2149-455A-B3BD-0AAE42B65E19 (taskID 1, bit 2)
                if (conditions & 1 == 1) {
                    // take conditional branch
                    _tokenState &= ~uint(1);
                    _tokenState |= 8; // activate task 3
                    continue;
                } else {
                    // take default branch
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // activate task 1
                    continue;
                }
            }

            // <--- ChoreographyTask sid-23AC13FC-2149-455A-B3BD-0AAE42B65E19 T1 --->
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[0]) {
                    // Only A (participants[0]) can call this
                    // <--- custom task code here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // next: task 2
                    id = 0;
                    continue;
                }
            }

            // <--- ChoreographyTask sid-7F1513B0_C957_4B85_B9F9_B8E3A4247123 T2 --->
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    // Only B (participants[2]) can call this
                    // <--- custom task code here --->
                    _tokenState &= ~uint(4);
                    // This task leads to an end event, so process ends here
                    _tokenState |= 0;
                    break;
                }
            }

            // <--- ChoreographyTask sid-B1284174_413A_49C0_9CB0_12564D20E00F T3 --->
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    // Only A (participants[4]) can call this
                    // <--- custom task code here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // next: task 4
                    id = 0;
                    continue;
                }
            }

            // <--- ChoreographyTask sid-39C5F9D9_295C_4FA1_91CB_3AB98F3EBD94 T4 --->
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[6]) {
                    // Only C (participants[6]) can call this
                    // <--- custom task code here --->
                    _tokenState &= ~uint(16);
                    // This task leads to an end event, so process ends here
                    _tokenState |= 0;
                    break;
                }
            }

            // No more active branches
            break;
        }
        tokenState = _tokenState;
    }
}