// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:11:47.779Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
    uint public tokenState = 1;
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Parallel gateway diverging auto transition
                _tokenState &= ~uint(2);
                _tokenState |= 28; // 4 | 8 | 16
                continue;
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-998BF84A-5A1B-4FC1-8D9D-35B23405CB1E Issue Report to Client
                if (1 == id && msg.sender == participants[0]) {
                    // custom code for task here
                    _tokenState &= ~uint(4);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-840A8FCC-2211-467B-B180-1E77580E3EDF Issue report to registry
                if (2 == id && msg.sender == participants[2]) {
                    // custom code for task here
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-78E1385A-0AF4-4CDC-967C-072B15693036 Issue report to accounts receivable
                if (3 == id && msg.sender == participants[4]) {
                    // custom code for task here
                    _tokenState &= ~uint(16);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 224 == 224) {
                // Parallel gateway converging (32 | 64 | 128)
                _tokenState &= ~uint(224);
                _tokenState |= 0;
                break; // is end
            }
            break;
        }
        tokenState = _tokenState;
    }
}
