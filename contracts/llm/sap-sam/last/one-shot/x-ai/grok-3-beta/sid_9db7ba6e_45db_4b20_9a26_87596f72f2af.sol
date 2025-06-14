// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:09:43.418Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_9db7ba6e_45db_4b20_9a26_87596f72f2af {
    uint public tokenState = 1; // Start with the start event active
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
            // Start Event (sid-CC2E51E7-03A3-476D-9D6D-5C08C398DC1E)
            if (_tokenState & 1 == 1) {
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-A19CE1A5-B109-48AC-91B5-D068C96DD84C
                continue;
            }

            // Choreography Task: lodge cancellation request (sid-A19CE1A5-B109-48AC-91B5-D068C96DD84C)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate gateway sid-EDD9216B-BD9F-41A4-B44C-D1DBF0A564F6
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway (sid-EDD9216B-BD9F-41A4-B44C-D1DBF0A564F6)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 (notify cancellation)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default path to sid-93377547-AA5F-4B50-AD6A-B7329051D7AA (notify penalty)
                    continue;
                }
            }

            // Choreography Task: notify cancellation (sid-EFBA5F44-4987-41D9-8774-26F9DF28A974)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate end event sid-35ECF0CE-E7FA-4266-B3BC-F4CC4877B2DE
                    id = 0;
                    continue;
                }
            }

            // Choreography Task: notify penalty (sid-93377547-AA5F-4B50-AD6A-B7329051D7AA)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate gateway sid-2A47A850-480C-4A09-8940-42959421F821
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway (sid-2A47A850-480C-4A09-8940-42959421F821)
            if (_tokenState & 64 == 64) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate sid-DA2E7957-7657-496F-9F71-05B305AB27BD (reject cancellation)
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 8; // Default path to sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 (notify cancellation)
                    continue;
                }
            }

            // Choreography Task: reject cancellation (sid-DA2E7957-7657-496F-9F71-05B305AB27BD)
            if (_tokenState & 128 == 128) {
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(128);
                    _tokenState |= 32; // Activate end event sid-35ECF0CE-E7FA-4266-B3BC-F4CC4877B2DE
                    id = 0;
                    continue;
                }
            }

            // End Event (sid-35ECF0CE-E7FA-4266-B3BC-F4CC4877B2DE)
            if (_tokenState & 32 == 32) {
                _tokenState = 0; // Terminate process
                break;
            }

            break; // Exit loop if no transitions are triggered
        }
        tokenState = _tokenState;
    }
}