// test GPT 4.1 - One Shot at 2025-06-02T19:29:16.768Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_ChoreographyExample3 {
    uint public tokenState = 1;
    address[3] public participants;
    uint public conditions;

    constructor(address[3] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // taskID mapping:
    // 0: ChoreographyTask_1vnykqp (Order goods) - initiator: Participant_1tzf68i (0)
    // 1: ChoreographyTask_16lc74v (Produce goods) - initiator: Participant_198pz14 (1)
    // 2: ChoreographyTask_07t2zjo (Inform customer) - initiator: Participant_198pz14 (1)
    // 3: ChoreographyTask_056ylqg (Ship goods) - initiator: Participant_198pz14 (1)
    // 4: ChoreographyTask_0n57gae (Confirm order) - initiator: Participant_1tzf68i (0)
    // 5: ChoreographyTask_0gnknm9 (Confirm ETA) - initiator: Participant_198pz14 (1)

    function enact(uint id) external {
        uint _tokenState = tokenState;

        while(_tokenState != 0) {

            // --- ChoreographyTask_1vnykqp (Order goods) ---
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    continue;
                }
            }

            // --- Gateway_1bpkhpg (exclusive) ---
            // tokenState 2: waiting after Order goods, ready for gateway
            if (_tokenState & 2 == 2) {
                // Flow_067nql1: available (has condition)
                if ((conditions & 1 == 1)) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 16;
                    continue;
                }
                // Flow_0ymdsa2: default (unavailable), to Inform customer
                _tokenState &= ~uint(2);
                _tokenState |= 8;
                continue;
            }

            // --- ChoreographyTask_07t2zjo (Inform customer) ---
            if (_tokenState & 8 == 8) {
                if (id == 2 && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 1024;
                    continue;
                }
            }

            // --- ChoreographyTask_0n57gae (Confirm order) ---
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }

            // --- Gateway_1klfaw3 (parallel) ---
            // tokenState 32: after Confirm order, split into two paths
            if (_tokenState & 32 == 32) {
                // Parallel split: Produce goods + Confirm ETA
                _tokenState &= ~uint(32);
                _tokenState |= 64 | 512;
                continue;
            }

            // --- ChoreographyTask_16lc74v (Produce goods) ---
            if (_tokenState & 64 == 64) {
                if (id == 1 && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    continue;
                }
            }

            // --- ChoreographyTask_0gnknm9 (Confirm ETA) ---
            if (_tokenState & 512 == 512) {
                if (id == 5 && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(512);
                    _tokenState |= 256;
                    continue;
                }
            }

            // --- Gateway_0xcnzox (parallel join) ---
            // tokenState 128 | 256 = 384: both Produce goods and Confirm ETA done
            if (_tokenState & 384 == 384) {
                // Parallel join: merge -> Ship goods
                _tokenState &= ~uint(384);
                _tokenState |= 2048;
                continue;
            }

            // --- ChoreographyTask_056ylqg (Ship goods) ---
            if (_tokenState & 2048 == 2048) {
                if (id == 3 && msg.sender == participants[1]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                    continue;
                }
            }

            // --- Gateway_07ncm8m (exclusive) ---
            // tokenState 1024 (from Inform customer) or 4096 (from Ship goods)
            if (_tokenState & 1024 == 1024) {
                // only one incoming at a time, both go to end event
                _tokenState &= ~uint(1024);
                _tokenState |= 8192;
                continue;
            }
            if (_tokenState & 4096 == 4096) {
                _tokenState &= ~uint(4096);
                _tokenState |= 8192;
                continue;
            }

            // --- End Event (Event_05susj6) ---
            if (_tokenState & 8192 == 8192) {
                // End event, clear token
                _tokenState = 0;
                break;
            }

            break;
        }

        tokenState = _tokenState;
    }
}