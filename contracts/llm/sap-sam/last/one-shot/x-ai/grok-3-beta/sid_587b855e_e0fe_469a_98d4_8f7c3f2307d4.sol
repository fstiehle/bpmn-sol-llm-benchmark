// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:53:46.280Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
    uint public tokenState = 1; // Start event active
    address[6] public participants;
    uint public conditions;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event to Diverging Parallel Gateway
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Diverging Parallel Gateway
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Diverging Parallel Gateway (sid-AD166EA9-2459-45D4-BC9D-C7FC8B16A974)
                // Activate all outgoing paths concurrently
                _tokenState &= ~uint(2);
                _tokenState |= 4; // Path to Task 1: Issue Report to Client
                _tokenState |= 8; // Path to Task 2: Issue Report to Registry
                _tokenState |= 16; // Path to Task 3: Issue Report to Accounts Receivable
                continue;
            }
            if (_tokenState & 4 == 4) {
                // Choreography Task: Issue Report to Client (sid-998BF84A-5A1B-4FC1-8D9D-35B23405CB1E)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32; // Path to Converging Parallel Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Choreography Task: Issue Report to Registry (sid-840A8FCC-2211-467B-B180-1E77580E3EDF)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 64; // Path to Converging Parallel Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Choreography Task: Issue Report to Accounts Receivable (sid-78E1385A-0AF4-4CDC-967C-072B15693036)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128; // Path to Converging Parallel Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & (32 | 64 | 128) == (32 | 64 | 128)) {
                // Converging Parallel Gateway (sid-6DBB1636-2FE2-4C64-9097-C6A54D4763FC)
                // All incoming paths are active
                _tokenState &= ~uint(32 | 64 | 128);
                _tokenState |= 256; // Path to End Event
                continue;
            }
            if (_tokenState & 256 == 256) {
                // End Event (sid-CF2F3CBB-0984-4988-A9FE-835E47F17907)
                _tokenState &= ~uint(256);
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}