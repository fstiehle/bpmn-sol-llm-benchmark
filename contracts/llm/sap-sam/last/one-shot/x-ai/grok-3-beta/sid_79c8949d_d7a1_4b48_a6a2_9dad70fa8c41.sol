// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:00:19.856Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_79c8949d_d7a1_4b48_a6a2_9dad70fa8c41 {
    uint public tokenState = 1; // Start state
    address[4] public participants;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-B553A377-63E5-45B1-A969-E2B87D0C7386 Notificar Envio --->
                if (taskID == 1 && msg.sender == participants[0]) {
                    // Task execution for Notificar Envio
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-A032EAFA-35FD-4B68-BE54-7CE90DC1CCAF Recepcionar Envio --->
                if (taskID == 2 && msg.sender == participants[2]) {
                    // Task execution for Recepcionar Envio
                    _tokenState &= ~uint(2);
                    _tokenState |= 0; // End of process
                    break; // Terminate process
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}