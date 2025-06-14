// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:37:26.409Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_19396877_be94_440c_98de_2cc3f663a397 {
    uint public tokenState = 1; // Starting with the start event active
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
            if (_tokenState & 1 == 1) {
                // Start event auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Definiranje problema task
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Definiranje problema task (sid-8C65E42B-E757-4E52-B61B-8848CA9503FC, taskID=1)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Istraživanje problema task
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Istraživanje problema task (sid-5A4ADFFF-1BB4-4EB8-A933-FE6DE6BF79FF, taskID=2)
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate exclusive gateway sid-D58A80C2-5366-4EAF-85D6-FF528974749C
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Exclusive Gateway sid-D58A80C2-5366-4EAF-85D6-FF528974749C
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate converging gateway sid-1DBE80B3-FBFF-4331-93CF-C84BF98387D3 via conditions path
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate Detaljno istraživanje problema task (default path)
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Detaljno istraživanje problema task (sid-73121FA6-3845-470E-A214-0579501D074D, taskID=4)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 16; // Activate converging gateway sid-1DBE80B3-FBFF-4331-93CF-C84BF98387D3
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Converging Exclusive Gateway sid-1DBE80B3-FBFF-4331-93CF-C84BF98387D3
                _tokenState &= ~uint(16);
                _tokenState |= 64; // Activate Slanje rješenja task
                continue;
            }
            if (_tokenState & 64 == 64) {
                // Slanje rješenja task (sid-5E4EC884-D666-4075-A435-CF8788D1DAE2, taskID=3)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0; // End of process
                    break; // Process termination
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}