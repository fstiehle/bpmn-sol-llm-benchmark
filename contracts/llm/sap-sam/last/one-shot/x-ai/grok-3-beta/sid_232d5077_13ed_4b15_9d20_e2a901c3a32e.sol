// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:40:06.867Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
    uint public tokenState = 1; // Start event active
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
            // Start Event to Parallel Gateway (Diverging)
            if (_tokenState & 1 == 1) {
                // Auto transition from Start Event to Parallel Gateway
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Parallel Gateway (sid-51FDD8A3-0E17-4736-AA14-AE6D303EF8E0)
                continue;
            }

            // Parallel Gateway (Diverging) to Task1 and Task2
            if (_tokenState & 2 == 2) {
                // Auto transition to activate both Task1 and Task2
                _tokenState &= ~uint(2);
                _tokenState |= 4; // Activate Task1 (sid-BD7B4002-9065-4315-AA74-82D3A6E7F757)
                _tokenState |= 8; // Activate Task2 (sid-BD08DB98-E701-4D6C-9CAA-C146871F6BD5)
                continue;
            }

            // Task1 (taskID 1)
            if (_tokenState & 4 == 4) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate Parallel Gateway (Converging, sid-CA0395AA-40A9-47C7-83B3-1F4666FEFA18) partially
                    id = 0;
                    continue;
                }
            }

            // Task2 (taskID 2)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate Parallel Gateway (Converging, sid-CA0395AA-40A9-47C7-83B3-1F4666FEFA18) partially
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway (Converging) - Wait for both Task1 and Task2
            if (_tokenState & 48 == 48) { // 16 + 32
                // Auto transition when both incoming flows are complete
                _tokenState &= ~uint(48);
                _tokenState |= 64; // Activate Event-Based Gateway (sid-78C45E25-19C0-43E0-B19B-39FED201B266)
                continue;
            }

            // Event-Based Gateway (Exclusive Diverging)
            if (_tokenState & 64 == 64) {
                // Since no conditions are provided in the model, we assume both paths are possible
                // Default behavior: allow either Task3 or Task4 to be chosen
                _tokenState &= ~uint(64);
                _tokenState |= 128; // Activate Task3 (sid-A83DECE7-E09F-4824-A820-4C2272E6E1B4)
                _tokenState |= 256; // Activate Task4 (sid-34B7968B-AE9A-47F7-BC39-04BD8B6B1548)
                continue;
            }

            // Task3 (taskID 3)
            if (_tokenState & 128 == 128) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Activate End Event partially
                    id = 0;
                    continue;
                }
            }

            // Task4 (taskID 4)
            if (_tokenState & 256 == 256) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024; // Activate End Event partially
                    id = 0;
                    continue;
                }
            }

            // End Event - Check if either Task3 or Task4 completed
            if (_tokenState & 512 == 512 || _tokenState & 1024 == 1024) {
                _tokenState = 0; // Terminate the process
                break; // End of process
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}