// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T19:25:16.417Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_851063b9_154a_464d_b0b2_3807e7b88a30 {
    uint public tokenState = 1;
    address[4] public participants;
    uint public conditions;
    
    constructor(address[4] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2 --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1 == 1) {
                // <--- EventBasedGateway sid-7B36D673-5B79-45DE-A171-D780235447B1 --->
                if (id == 0) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 6;
                    continue;
                }
            }
            if (_tokenState & 6 == 6) {
                // <--- Exclusive Gateway logic --->
                _tokenState &= ~uint(6);
                _tokenState |= 1;
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 3 == 3) {
                // <--- EndEvent sid-ACC06B91-0464-44A3-96F7-C352EB41B892 --->
                _tokenState &= ~uint(3);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
