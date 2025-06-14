// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:23:29.819Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_43759ceb_297d_45bc_be26_ca0fbe1005bf {
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
            if ((_tokenState & 1) == 1) {
                // Auto transition from StartEvent to ChoreographyTask1
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if ((_tokenState & 2) == 2) {
                // ChoreographyTask1: sid-F7F3C968-49FE-4E45-9D23-88A8D6512528
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            
            if ((_tokenState & 4) == 4) {
                // ChoreographyTask2: sid-CFB94369-6DC6-4A48-8CB3-0224494D2054
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            
            if ((_tokenState & 8) == 8) {
                // ExclusiveGateway sid-4AE43A7F
                if ((conditions & 1) == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 512;
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 256;
                    continue;
                }
            }
            
            if ((_tokenState & 256) == 256) {
                // ChoreographyTask4: sid-43D5C23B-4BAF-4D90-A088-FECE19108670
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            
            if ((_tokenState & 64) == 64) {
                // ExclusiveGateway sid-07C0ABF7
                if ((conditions & 2) == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 1024;
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 2048;
                    continue;
                }
            }
            
            if ((_tokenState & 1024) == 1024) {
                // ChoreographyTask6: sid-968CBB3E-23E7-4AC0-87A5-75DA650EE511
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            
            if ((_tokenState & 4096) == 4096) {
                // ChoreographyTask7: sid-8AC8B7C6-BE9D-4CD0-B309-0D83C70F7C21
                if (id == 7 && msg.sender == participants[13]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            
            if ((_tokenState & 128) == 128) {
                // ExclusiveGateway sid-13D1392F
                // Auto transition to ChoreographyTask5
                _tokenState &= ~uint(128);
                _tokenState |= 512;
                continue;
            }
            
            if ((_tokenState & 512) == 512) {
                // ChoreographyTask5: sid-DECE56B3-AD26-4313-9744-49DF2A6C6A9F
                if (id == 5 && msg.sender == participants[9]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            
            if ((_tokenState & 256) == 256) {
                // ExclusiveGateway sid-1B0A61E0
                // Auto transition to ChoreographyTask3
                _tokenState &= ~uint(256);
                _tokenState |= 1024;
                continue;
            }
            
            if ((_tokenState & 1024) == 1024) {
                // ChoreographyTask3: sid-31D3A0CF-717F-4EF7-9B47-774CB8A8215D
                if (id == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break; // EndEvent
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
