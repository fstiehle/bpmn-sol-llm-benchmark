// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:50:32.874Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_4d7002e8_d91f_4c7c_a964_34a6b62cff72 {
    uint public tokenState = 1; // Start with the StartEvent active
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
                // StartEvent sid-F28CD746-17A7-4262-BBFA-82A778A0C33B
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-EC41FCC8-D686-462C-9493-2F2CDFA9052F
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-EC41FCC8-D686-462C-9493-2F2CDFA9052F
                if (1 == id && msg.sender == participants[0]) {
                    // Task execution by initiating participant
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Gateway sid-7B36D673-5B79-45DE-A171-D780235447B1
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ExclusiveGateway sid-7B36D673-5B79-45DE-A171-D780235447B1
                if (conditions & 1 == 1) {
                    // Condition for sid-60E9B0E8-1936-4BA5-A8BB-E3C76D912978
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2
                    continue;
                } else {
                    // Default path sid-9F770F0C-BDEF-4FAC-BDFB-58245685E379
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA
                if (2 == id && msg.sender == participants[2]) {
                    // Task execution by initiating participant
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate EndEvent sid-630EBBD0-5717-4E88-91D3-4D6107653806 (Path 1)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2
                if (3 == id && msg.sender == participants[4]) {
                    // Task execution by initiating participant
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate EndEvent sid-630EBBD0-5717-4E88-91D3-4D6107653806 (Path 2)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // EndEvent sid-630EBBD0-5717-4E88-91D3-4D6107653806
                _tokenState = 0; // Process termination
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}