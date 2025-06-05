// test GPT 4.1 - One Shot at 2025-06-05T15:16:25.893Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_ChoreographyExample2 {
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
    // 0: ChoreographyTask_1vnykqp (Order goods) - initiator: participants[0]
    // 1: ChoreographyTask_16lc74v (Produce goods) - initiator: participants[1]
    // 2: ChoreographyTask_07t2zjo (Inform customer) - initiator: participants[1]
    // 3: ChoreographyTask_056ylqg (Ship goods) - initiator: participants[1]
    // 4: ChoreographyTask_0n57gae (Confirm order) - initiator: participants[0]

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            // ChoreographyTask_1vnykqp (Order goods): token 1 << 0 = 1
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) {
                    // After Order goods, exclusiveGateway_1bpkhpg: 2 paths
                    // - if conditions & 1 == 1: to Confirm order (token 32)
                    // - else: to parallelGateway_1klfaw3 (token 6)
                    _tokenState &= ~uint(1);
                    // Will process gateway below
                    continue;
                }
            }
            // ChoreographyTask_16lc74v (Produce goods): token 2 << 1 = 2
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[1]) {
                    // After Produce goods -> parallelGateway_0xcnzox (wait for Inform customer)
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            // ChoreographyTask_07t2zjo (Inform customer): token 4 << 2 = 4
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[1]) {
                    // After Inform customer -> parallelGateway_0xcnzox (wait for Produce goods)
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            // ChoreographyTask_056ylqg (Ship goods): token 32 << 5 = 32
            if (_tokenState & 32 == 32) {
                if (id == 3 && msg.sender == participants[1]) {
                    // After Ship goods: process ends
                    _tokenState &= ~uint(32);
                    _tokenState = 0;
                    break;
                }
            }
            // ChoreographyTask_0n57gae (Confirm order): token 16 << 4 = 16
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[0]) {
                    // After Confirm order -> exclusiveGateway_1yl9mch (proceed to Ship goods)
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }

            // --- Gateway logic ---

            // ExclusiveGateway_1bpkhpg: After Order goods, decide branch
            // If Order goods (token 1) was just consumed, need to process gateway
            if (_tokenState & 1 == 0 && // Order goods not active anymore
                (_tokenState & (2|4|8|16|32)) == 0 && // No further steps yet
                (_tokenState == 0) // Only just cleared Order goods
            ) {
                // This state is not reachable, as _tokenState will be assigned below in token transitions
                // The actual split is handled right after Order goods is enacted below
                break;
            }
            // After Order goods: split by exclusiveGateway_1bpkhpg
            // But since we clear token 1 and nothing else is active, we need to fork here
            if ((_tokenState == 0)) {
                // After Order goods, exclusiveGateway_1bpkhpg
                if (conditions & 1 == 1) {
                    // to Confirm order
                    _tokenState |= 16; // Confirm order
                    continue;
                } else {
                    // default: to parallelGateway_1klfaw3 (Produce goods and Inform customer in parallel)
                    _tokenState |= 6; // Produce goods (2) | Inform customer (4)
                    continue;
                }
            }

            // ParallelGateway_0xcnzox: waits for both 8 (Produce done) and 16 (Inform done)
            if ((_tokenState & 24) == 24) { // 8 + 16
                // Both incoming flows met, proceed to Gateway_1yl9mch (Ship goods)
                _tokenState &= ~uint(24);
                _tokenState |= 32; // Ship goods
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}