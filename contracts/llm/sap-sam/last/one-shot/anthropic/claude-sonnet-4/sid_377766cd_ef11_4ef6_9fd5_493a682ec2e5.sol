// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:16:29.478Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_377766cd_ef11_4ef6_9fd5_493a682ec2e5 {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;
    
    constructor(address[16] memory _participants) {
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
                // Exclusive gateway oryx_3222FEF9
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // oryx_5F252A9D
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // oryx_3CC394C6
                    continue;
                }
            }
            
            if (_tokenState & 4 == 4) {
                // ChoreographyTask oryx_3CC394C6 Submit a physical order
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask oryx_5F252A9D Submit a digital order
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16 == 16) {
                // Exclusive gateway oryx_D6066501 auto transition
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            
            if (_tokenState & 32 == 32) {
                // ChoreographyTask oryx_C94079F4 Check Order Status
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 64 == 64) {
                // Exclusive gateway oryx_7EBD1558
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // oryx_96F23DC7
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // oryx_386066EF
                    continue;
                }
            }
            
            if (_tokenState & 128 == 128) {
                // ChoreographyTask oryx_386066EF Notify arrival
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 256 == 256) {
                // ChoreographyTask oryx_96F23DC7 Package delivery
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 512 == 512) {
                // ChoreographyTask oryx_4089513A Package delivered
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask oryx_99D1F9AD Payment confirmation
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask oryx_58F5A854 Payment confirmation
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4096 == 4096) {
                // Exclusive gateway oryx_87DDC14A auto transition
                _tokenState &= ~uint(4096);
                _tokenState |= 0;
                break; // End event
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
