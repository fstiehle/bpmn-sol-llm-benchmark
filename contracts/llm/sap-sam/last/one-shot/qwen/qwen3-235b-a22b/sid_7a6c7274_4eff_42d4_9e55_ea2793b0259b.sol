// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:45:45.648Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_7a6c7274_4eff_42d4_9e55_ea2793b0259b {
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask sid-318B7DE9-B76B-4BF1-873D-AA8D0B979925: Antrag verschicken
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    if (conditions & 1 == 1) {
                        _tokenState |= 4; // sid-4700529E-F434-4F38-9D0A-AE6D75F71C17
                    } else {
                        _tokenState |= 2; // sid-73CAEE4D-3B51-4B1E-8204-231D4AC0C13B
                    }
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-73CAEE4D-3B51-4B1E-8204-231D4AC0C13B: Annehmen
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    break;
                }
            }

            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-4700529E-F434-4F38-9D0A-AE6D75F71C17: Ablehnen
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
