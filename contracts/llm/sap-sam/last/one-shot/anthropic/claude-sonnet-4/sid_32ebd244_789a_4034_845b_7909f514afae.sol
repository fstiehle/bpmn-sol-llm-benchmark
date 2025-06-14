// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:14:25.568Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_32ebd244_789a_4034_845b_7909f514afae {
    uint public tokenState = 1;
    address[24] public participants;
    uint public conditions;
    
    constructor(address[24] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event - auto transition to task 10
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-E3620D11-E6DC-4A65-B1AA-4EB21EBFC161 (taskID 10)
                if (10 == taskID && msg.sender == participants[18]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-D7480028-8993-45A4-9935-FB44D4B1EAD0 (taskID 1)
                if (1 == taskID && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-64F20D69-8C4C-4A2A-BE70-35EEC849B4FB (taskID 2)
                if (2 == taskID && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-FF0126DF-BE30-4647-919F-9E823BDA02A5 (taskID 9)
                if (9 == taskID && msg.sender == participants[16]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 32 == 32) {
                // Exclusive gateway - check conditions
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // rejected path
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // approved path
                    continue;
                }
            }
            
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-4609FD42-51BC-4BE0-B877-21573CF36C96 (taskID 11)
                if (11 == taskID && msg.sender == participants[20]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-608D82CC-C620-4F52-B470-F9FD1E8E8A3B (taskID 12)
                if (12 == taskID && msg.sender == participants[22]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-3CB8E112-CDEC-4941-AE4C-9242FD4FE427 (taskID 4)
                if (4 == taskID && msg.sender == participants[6]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 512 == 512) {
                // ChoreographyTask sid-50B3F4F3-21BA-4B90-B709-1CAC29BB4287 (taskID 5)
                if (5 == taskID && msg.sender == participants[8]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // end
                    break;
                }
            }
            
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask sid-93A10FCD-BBB8-4C44-8573-877162EBB6CA (taskID 3)
                if (3 == taskID && msg.sender == participants[4]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask sid-FC29AEDB-216D-4028-91A6-A1370E3290AB (taskID 6)
                if (6 == taskID && msg.sender == participants[10]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096; // parallel split
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4096 == 4096) {
                // Parallel split
                _tokenState &= ~uint(4096);
                _tokenState |= 8192 | 16384; // activate both parallel branches
                continue;
            }
            
            if (_tokenState & 8192 == 8192) {
                // ChoreographyTask sid-18ACAE26-A6E9-4892-94D4-AB9A766441F3 (taskID 7)
                if (7 == taskID && msg.sender == participants[12]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 32768;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16384 == 16384) {
                // ChoreographyTask sid-55FD4B75-CA30-4905-83D1-D83F643560E7 (taskID 8)
                if (8 == taskID && msg.sender == participants[14]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 65536;
                    taskID = 0;
                    continue;
                }
            }
            
            if (_tokenState & 98304 == 98304) {
                // Parallel join (32768 | 65536)
                _tokenState &= ~uint(98304);
                _tokenState |= 0; // end
                break;
            }
            
            break;
        }
        
        tokenState = _tokenState;
    }
}
