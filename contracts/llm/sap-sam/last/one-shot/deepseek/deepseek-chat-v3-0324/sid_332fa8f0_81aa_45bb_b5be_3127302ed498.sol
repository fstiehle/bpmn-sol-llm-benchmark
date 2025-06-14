// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:50:34.298Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_332fa8f0_81aa_45bb_b5be_3127302ed498 {
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
                // <--- ChoreographyTask_8D954E41 Pre-return management --->
                if (1 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_351B7611 Return provisioning --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask_10D63CD2 Order provisioning --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask_A11B5D52 Outbound transport provisioning --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask_2FF1B585 Data analysis --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask_4FA3D8A3 Inventory provisioning --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask_B12E935A Process provisioning --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask_6E9DC37A Inbound parcel provisioning --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <---  auto transition  --->
                _tokenState &= ~uint(256);
                _tokenState |= 128;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}