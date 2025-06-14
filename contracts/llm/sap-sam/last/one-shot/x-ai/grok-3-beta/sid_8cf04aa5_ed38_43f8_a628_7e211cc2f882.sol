// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:04:46.736Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_8cf04aa5_ed38_43f8_a628_7e211cc2f882 {
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
            if (_tokenState & 1 == 1) {
                // Start Event sid-8597C975-3D8E-4839-8C80-E08D2FA81ED4
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-A981B3EA-FC92-4ABE-9906-A9AB18283EAC
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-A981B3EA-FC92-4ABE-9906-A9AB18283EAC przyjmij pacjenta
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-0A2B5205-D3C8-4D18-8617-B059BA9DF38D
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-0A2B5205-D3C8-4D18-8617-B059BA9DF38D zapisz pacjenta
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-A448521E-0933-448B-A270-8EC27F0CC5B3 (exclusive gateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Exclusive Gateway sid-A448521E-0933-448B-A270-8EC27F0CC5B3
                if (conditions & 1 == 1) {
                    // Condition for sid-546BF745-183E-42CD-A7C5-E6365B247939
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate sid-44FA8648-8BD1-4ED3-BB90-1524147E2E12
                    continue;
                } else {
                    // Default path sid-7FC618E9-E3FA-4208-9639-20E05D593FCB
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate sid-1C994BCF-8067-4CF5-B9A1-1E5E1E24B8AA
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-44FA8648-8BD1-4ED3-BB90-1524147E2E12 wyslanie odwolania
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate sid-1FEF189D-8FDA-48C4-B234-28C9600F06EF (converging gateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-1C994BCF-8067-4CF5-B9A1-1E5E1E24B8AA wyslanie organu
                if (3 == id && msg.sender == participants[5]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate sid-1FEF189D-8FDA-48C4-B234-28C9600F06EF (converging gateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Exclusive Gateway (Converging) sid-1FEF189D-8FDA-48C4-B234-28C9600F06EF
                // Auto transition to end event
                _tokenState &= ~uint(64);
                _tokenState |= 128; // Activate end event sid-56924977-50D0-4897-AB7B-0ECA05A328A4
                continue;
            }
            if (_tokenState & 128 == 128) {
                // End Event sid-56924977-50D0-4897-AB7B-0ECA05A328A4
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}