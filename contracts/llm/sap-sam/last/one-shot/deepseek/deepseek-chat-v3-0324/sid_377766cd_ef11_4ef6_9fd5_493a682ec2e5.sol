// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:54:55.783Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_377766cd_ef11_4ef6_9fd5_493a682ec2e5 {
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
                // <--- Start Event --->
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // <--- ExclusiveGateway --->
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
            
            if (_tokenState & 4 == 4) {
                // <--- Submit a "physical" order --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // <--- Submit a "digital" order --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16 == 16) {
                // <--- ExclusiveGateway --->
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            
            if (_tokenState & 32 == 32) {
                // <--- Check Order Status --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 64 == 64) {
                // <--- ExclusiveGateway --->
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    continue;
                }
            }
            
            if (_tokenState & 128 == 128) {
                // <--- Package delivery --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 256 == 256) {
                // <--- Notify arrival --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 512 == 512) {
                // <--- Payement confirmation --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 1024 == 1024) {
                // <--- Package delivered --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4096 == 4096) {
                // <--- Payment confirmation --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 2048 == 2048) {
                // <--- ExclusiveGateway --->
                _tokenState &= ~uint(2048);
                _tokenState |= 0;
                break;
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
