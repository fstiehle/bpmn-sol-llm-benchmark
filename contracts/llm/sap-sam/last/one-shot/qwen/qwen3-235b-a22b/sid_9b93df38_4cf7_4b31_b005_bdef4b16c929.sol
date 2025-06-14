// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:26:33.670Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_9b93df38_4cf7_4b31_b005_bdef4b16c929 {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;
    
    constructor(address[14] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        
        while (_tokenState != 0) {
            // Make Travel Offer (task 1)
            if ((_tokenState & 1) == 1 && id == 1 && msg.sender == participants[0]) {
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                id = 0;
                continue;
            }
            
            // Exclusive gateway after Make Travel Offer
            if ((_tokenState & 2) == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            
            // Book travel (task 3)
            if ((_tokenState & 4) == 4 && id == 3 && msg.sender == participants[4]) {
                _tokenState &= ~uint(4);
                _tokenState |= 16;
                id = 0;
                continue;
            }
            
            // Confirm booking (task 4)
            if ((_tokenState & 16) == 16 && id == 4 && msg.sender == participants[6]) {
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                id = 0;
                continue;
            }
            
            // Pay travel (task 5)
            if ((_tokenState & 32) == 32 && id == 5 && msg.sender == participants[8]) {
                _tokenState &= ~uint(32);
                _tokenState |= 64;
                id = 0;
                continue;
            }
            
            // Order Ticket (task 6)
            if ((_tokenState & 64) == 64 && id == 6 && msg.sender == participants[10]) {
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                id = 0;
                continue;
            }
            
            // Confirm payment (task 7)
            if ((_tokenState & 128) == 128 && id == 7 && msg.sender == participants[12]) {
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                id = 0;
                continue;
            }
            
            // Cancel Offer (task 2)
            if ((_tokenState & 8) == 8 && id == 2 && msg.sender == participants[2]) {
                _tokenState &= ~uint(8);
                _tokenState |= 256;
                id = 0;
                continue;
            }
            
            // End event
            if ((_tokenState & 256) == 256) {
                _tokenState = 0;
                break;
            }
            
            break;
        }
        
        tokenState = _tokenState;
    }
}
