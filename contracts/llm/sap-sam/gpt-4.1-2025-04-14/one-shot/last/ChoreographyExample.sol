// test GPT 4.1 - One Shot at 2025-06-05T15:16:07.671Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_ChoreographyExample {
    uint public tokenState = 1; // Start Event
    address[3] public participants;
    uint public conditions;
    // Parallel gateway tracking
    bool public produced;
    bool public informed;

    constructor(address[3] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;

        while (_tokenState != 0) {
            // <--- ChoreographyTask_1vnykqp: Order goods --->
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) {
                    // From startEvent to ChoreographyTask_1vnykqp to Gateway_1bpkhpg
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Gateway_1bpkhpg active
                    continue;
                }
            }
            // <--- Gateway_1bpkhpg (Exclusive) --->
            if (_tokenState & 2 == 2) {
                // Flow_067nql1: condition branch
                if ((conditions & 1 == 1)) {
                    // to Gateway_1yl9mch
                    _tokenState &= ~uint(2);
                    _tokenState |= 32; // Gateway_1yl9mch active
                    continue;
                }
                // Default: Flow_0ymdsa2
                else {
                    // to Gateway_1klfaw3
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Gateway_1klfaw3 active
                    produced = false;
                    informed = false;
                    continue;
                }
            }
            // <--- Gateway_1klfaw3 (Parallel Split) --->
            if (_tokenState & 4 == 4) {
                // Can go to ChoreographyTask_16lc74v (Produce goods) and ChoreographyTask_07t2zjo (Inform customer) in any order
                // Both are enabled in parallel
                _tokenState &= ~uint(4);
                _tokenState |= 8 | 16; // 8: ChoreographyTask_16lc74v, 16: ChoreographyTask_07t2zjo
                continue;
            }
            // <--- ChoreographyTask_16lc74v: Produce goods --->
            if (_tokenState & 8 == 8) {
                if (id == 1 && msg.sender == participants[1]) {
                    _tokenState &= ~uint(8);
                    produced = true;
                    // After this, check if both produced/informed done to proceed
                    if (produced && informed) {
                        // Both done, move to Gateway_0xcnzox
                        _tokenState &= ~uint(16); // remove informed if still present
                        _tokenState |= 64; // Gateway_0xcnzox
                    }
                    continue;
                }
            }
            // <--- ChoreographyTask_07t2zjo: Inform customer --->
            if (_tokenState & 16 == 16) {
                if (id == 2 && msg.sender == participants[1]) {
                    _tokenState &= ~uint(16);
                    informed = true;
                    // After this, check if both produced/informed done to proceed
                    if (produced && informed) {
                        _tokenState &= ~uint(8); // remove produced if still present
                        _tokenState |= 64; // Gateway_0xcnzox
                    }
                    continue;
                }
            }
            // <--- Gateway_0xcnzox (Parallel Join) --->
            if (_tokenState & 64 == 64) {
                // After both tasks, proceed to Gateway_1yl9mch
                _tokenState &= ~uint(64);
                _tokenState |= 32;
                continue;
            }
            // <--- Gateway_1yl9mch (Exclusive) --->
            if (_tokenState & 32 == 32) {
                // Only one outgoing, default
                // to ChoreographyTask_056ylqg (Ship goods)
                _tokenState &= ~uint(32);
                _tokenState |= 128;
                continue;
            }
            // <--- ChoreographyTask_056ylqg: Ship goods --->
            if (_tokenState & 128 == 128) {
                if (id == 3 && msg.sender == participants[1]) {
                    _tokenState &= ~uint(128);
                    // End event reached
                    _tokenState = 0;
                    produced = false;
                    informed = false;
                    break;
                }
            }
            // Nothing more to do in this round
            break;
        }

        tokenState = _tokenState;
    }
}