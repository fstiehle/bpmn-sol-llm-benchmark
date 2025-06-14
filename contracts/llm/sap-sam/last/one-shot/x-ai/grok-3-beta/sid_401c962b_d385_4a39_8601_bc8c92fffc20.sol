// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:48:35.238Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_401c962b_d385_4a39_8601_bc8c92fffc20 {
    uint public tokenState = 1; // Start with the start event active
    address[4] public participants;
    uint public conditions;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event sid-FDF1A118-3640-41A8-9B7A-41599DB2D1AA
                // Auto transition to parallel gateway
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate parallel gateway sid-43E0C616-06CF-4862-8DC7-6439ED8C2B37
                continue;
            }

            if (_tokenState & 2 == 2) {
                // Parallel Gateway (Diverging) sid-43E0C616-06CF-4862-8DC7-6439ED8C2B37
                // Auto transition to activate both outgoing paths
                _tokenState &= ~uint(2);
                _tokenState |= 4; // Activate task sid-3AD9F529-B32A-4E6C-A6D1-D567688AD463 (taskID 1)
                _tokenState |= 8; // Activate task sid-6E5C9418-EE6F-4ED9-9A40-F57E2E6489DE (taskID 2)
                continue;
            }

            if (_tokenState & 4 == 4) {
                // Choreography Task sid-3AD9F529-B32A-4E6C-A6D1-D567688AD463 (Call decision)
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate converging gateway sid-11160CCA-B21E-49DB-91E6-99CA0AD0E828 (partial)
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // Choreography Task sid-6E5C9418-EE6F-4ED9-9A40-F57E2E6489DE (Call decision)
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate converging gateway sid-11160CCA-B21E-49DB-91E6-99CA0AD0E828 (partial)
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 48 == 48) {
                // Parallel Gateway (Converging) sid-11160CCA-B21E-49DB-91E6-99CA0AD0E828
                // Both incoming paths are active (16 + 32 = 48), so proceed to end event
                _tokenState &= ~uint(48);
                _tokenState |= 64; // Activate end event sid-EB06D1A2-5375-491D-AA42-87342A12F68F
                continue;
            }

            if (_tokenState & 64 == 64) {
                // End Event sid-EB06D1A2-5375-491D-AA42-87342A12F68F
                _tokenState &= ~uint(64);
                _tokenState = 0; // Terminate the process
                break;
            }

            break; // Exit loop if no transitions are triggered
        }
        tokenState = _tokenState;
    }
}