// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:09:13.632Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_9c5ded8f_d4e2_4108_a8c0_491376444823 {
    uint public tokenState = 1; // Start with the start event active
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent sid-3EDE939A-51F3-42BE-8F86-564851AD9D14
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-5E016529-61C6-4145-B0FE-2D3A09890067 - Przyjmij pacjenta
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-6A80CAC2-0693-49CC-93AE-99B8F5168A60 - Poczekaj na organ
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Exclusive Gateway sid-A83E263F-B397-4094-BE32-7BE61E44C43F
                // Since no conditions are defined in the model, we assume a default path or equal probability
                // For simplicity, we can let the first path (to task 3) be taken by default
                _tokenState &= ~uint(8);
                _tokenState |= 16; // Activate task 3 path
                continue;
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-BA78A708-DDDF-456A-BF00-5A762D0F7D35 - Poczekaj na gotowosc zespolu
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-AB42C175-3483-4A91-A939-0CC7F6045F09 - Przetransportuj organ
                if (5 == id && msg.sender == participants[8]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // EndEvent sid-59A19510-066E-430A-9D00-E89840AA8FA3
                _tokenState = 0; // Terminate process
                break;
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-2B07B286-2482-4BFA-95A9-59CFD87112F0 - Poczekaj na decyzje dotyczaca gotowosci zespolu
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(128);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}